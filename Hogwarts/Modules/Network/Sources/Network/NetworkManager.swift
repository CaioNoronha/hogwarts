import Foundation


public protocol NetworkManagerProtocol: Sendable {
    func executeRequest(request: NetworkRequest) async throws -> Data
    func executeRequest<Response: Decodable>(request: NetworkRequest, responseType: Response.Type) async throws -> Response
    func executeMockRequest<Response: Decodable>(_ request: NetworkRequest, responseType: Response.Type) async throws -> Response
}

public struct NetworkManager: NetworkManagerProtocol {

    //Attributes
    private let baseURL: URL
    private let session: URLSession

    public init(baseURL: URL, session: URLSession = .shared) {
        self.baseURL = baseURL
        self.session = session
    }

    //MARK: - Methods
    public func executeRequest(request: NetworkRequest) async throws -> Data {
        let urlRequest = try makeURLRequest(from: request)
        let (data, response) = try await session.data(for: urlRequest)

        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.invalidData
        }

        guard (200...299).contains(httpResponse.statusCode) else {
            throw NetworkError.invalidStatusCode(httpResponse.statusCode)
        }

        return data
    }

    public func executeRequest<Response: Decodable>(request: NetworkRequest, responseType: Response.Type) async throws -> Response {
        let data = try await executeRequest(request: request)
        return try JSONParser.parse(data, from: responseType)
    }

    public func executeMockRequest<Response: Decodable>(
        _ request: NetworkRequest,
        responseType: Response.Type
    ) async throws -> Response {
        guard let mockFileName = request.mockFileName else {
            throw NetworkError.mockRouteNotFound(request.routeKey)
        }

        guard let url = Self.mockFileURL(for: mockFileName) else {
            throw NetworkError.mockRouteNotFound(mockFileName)
        }

        let data = try Data(contentsOf: url)
        return try JSONParser.parse(data, from: responseType)
    }

    private func makeURLRequest(from request: NetworkRequest) throws -> URLRequest {
        guard var components = URLComponents(
            url: baseURL.appendingPathComponent(request.path),
            resolvingAgainstBaseURL: false
        ) else {
            throw NetworkError.invalidURL
        }

        if request.query.isEmpty == false {
            components.queryItems = request.query.map { URLQueryItem(name: $0.key, value: $0.value) }
        }

        guard let url = components.url else {
            throw NetworkError.invalidURL
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = request.method.rawValue
        urlRequest.httpBody = request.body

        for (key, value) in request.headers {
            urlRequest.setValue(value, forHTTPHeaderField: key)
        }

        return urlRequest
    }

    private static func mockFileURL(for fileName: String) -> URL? {
        let bundles = Bundle.allBundles + Bundle.allFrameworks

        for bundle in bundles {
            if let url = bundle.url(forResource: fileName, withExtension: "json", subdirectory: "Mocks") {
                return url
            }

            if let url = bundle.url(forResource: fileName, withExtension: "json") {
                return url
            }
        }

        return nil
    }
}

import Foundation
import Network

public struct MockNetworkManager: NetworkManagerProtocol {
    public init() {}

    public func executeRequest(request: NetworkRequest) async throws -> Data {
        guard let mockFileName = request.mockFileName else {
            throw NetworkError.mockRouteNotFound(request.routeKey)
        }

        guard let url = Bundle.module.url(forResource: mockFileName, withExtension: "json", subdirectory: "Mocks") else {
            throw NetworkError.mockRouteNotFound(mockFileName)
        }

        return try Data(contentsOf: url)
    }

    public func executeRequest<Response: Decodable>(
        request: NetworkRequest,
        responseType: Response.Type
    ) async throws -> Response {
        let data = try await executeRequest(request: request)
        return try JSONParser.parse(data, from: responseType)
    }
}

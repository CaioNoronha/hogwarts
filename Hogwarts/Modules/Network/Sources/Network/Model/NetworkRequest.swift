import Foundation

public struct NetworkRequest: Sendable {

    //Attributes

    public let path: String
    public let method: HTTPMethod
    public let query: [String: String]
    public let headers: [String: String]
    public let body: Data?
    public let mockFileName: String?

    public init(
        path: String,
        method: HTTPMethod = .get,
        query: [String: String] = [:],
        headers: [String: String] = [:],
        body: Data? = nil,
        mockFileName: String? = nil
    ) {
        self.path = path
        self.method = method
        self.query = query
        self.headers = headers
        self.body = body
        self.mockFileName = mockFileName
    }

    // MARK: Helpers
    public var routeKey: String {
        let sortedQuery = query
            .sorted { $0.key < $1.key }
            .map { "\($0.key)=\($0.value)" }
            .joined(separator: "&")

        guard sortedQuery.isEmpty == false else {
            return "\(method.rawValue) \(path)"
        }

        return "\(method.rawValue) \(path)?\(sortedQuery)"
    }
}

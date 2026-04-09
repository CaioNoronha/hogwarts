import Foundation

public enum NetworkError: Error, LocalizedError, Sendable {
    case invalidURL
    case invalidStatusCode(Int)
    case invalidData
    case decodingFailure(String)
    case mockRouteNotFound(String)

    public var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL."
        case let .invalidStatusCode(code):
            return "Network returned status code \(code)."
        case .invalidData:
            return "Failed to load response data."
        case let .decodingFailure(message):
            return "Failed to decode response data: \(message)"
        case let .mockRouteNotFound(route):
            return "No mock registered for route: \(route)"
        }
    }
}

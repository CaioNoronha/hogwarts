import Foundation
import Network

public protocol HomeWorkerProtocol: Sendable {
    func fetchHomeData() async throws -> HomeData
}

public struct HomeWorker: HomeWorkerProtocol, Sendable {
    private let networkManager: any NetworkManagerProtocol

    public init(networkManager: any NetworkManagerProtocol) {
        self.networkManager = networkManager
    }

    public func fetchHomeData() async throws -> HomeData {
        let request = HomeRequest()
        return try await networkManager.executeRequest(request: request.value, responseType: HomeData.self)
    }
}

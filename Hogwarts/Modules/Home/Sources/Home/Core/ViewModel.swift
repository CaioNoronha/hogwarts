import Foundation
import Observation

@MainActor
public protocol HomeViewModelProtocol: AnyObject {
    var homeData: HomeData { get }
    var isLoading: Bool { get }
    var errorMessage: String? { get }

    func loadHome() async
}

@MainActor
@Observable
public final class HomeViewModel: HomeViewModelProtocol {
    private let worker: any HomeWorkerProtocol

    public private(set) var homeData = HomeData(classes: [], suggestions: [], tasks: [])
    public private(set) var isLoading = false
    public private(set) var errorMessage: String?

    public init(worker: any HomeWorkerProtocol) {
        self.worker = worker
    }

    public func loadHome() async {
        isLoading = true
        errorMessage = nil

        defer { isLoading = false }

        do {
            homeData = try await worker.fetchHomeData()
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}

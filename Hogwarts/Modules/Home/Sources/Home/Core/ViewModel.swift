import Foundation

public protocol HomeViewModelProtocol {
    var classes: [HomeData.Class] { get }
    var suggestions: [HomeData.Suggestion] { get }
    var tasks: [HomeData.Task] { get }
}

public final class HomeViewModel: HomeViewModelProtocol {
    private let worker: any HomeWorkerProtocol
    private let homeData: HomeData

    public var classes: [HomeData.Class] { homeData.classes }
    public var suggestions: [HomeData.Suggestion] { homeData.suggestions }
    public var tasks: [HomeData.Task] { homeData.tasks }

    public init(worker: any HomeWorkerProtocol = HomeWorker()) {
        self.worker = worker
        self.homeData = worker.fetchHomeData()
    }
}

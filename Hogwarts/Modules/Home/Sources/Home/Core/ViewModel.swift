import Foundation

public protocol HomeViewModelProtocol {
    var classes: [HomeData.Class] { get }
    var suggestions: [HomeData.Suggestion] { get }
    var tasks: [HomeData.Task] { get }
}

public final class HomeViewModel: HomeViewModelProtocol {
    private let homeData: HomeData

    public var classes: [HomeData.Class] { homeData.classes }
    public var suggestions: [HomeData.Suggestion] { homeData.suggestions }
    public var tasks: [HomeData.Task] { homeData.tasks }

    public init() {
        self.homeData = .mock()
    }
}

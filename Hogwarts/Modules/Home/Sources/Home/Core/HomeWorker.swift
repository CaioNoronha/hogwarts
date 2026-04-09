import Foundation

public protocol HomeWorkerProtocol {
    func fetchData(completion: @escaping (Result<[HomeData], Error>) -> Void)
}

public class HomeWorker: HomeWorkerProtocol {
    public func fetchData(completion: @escaping (Result<[HomeData], any Error>) -> Void) {
        <#code#>
    }
}

import Foundation
import Network

struct HomeRequest: Sendable {
    let value: NetworkRequest

    init(value: String? = nil) {
        self.value = NetworkRequest(path: "home", mockFileName: value ?? "home_1")
    }
}

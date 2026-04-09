import Foundation
import Network

struct HomeRequest: Sendable {
    let value: NetworkRequest

    init(value: String? = nil) {
        self.value = NetworkRequest(path: "home", mockFileName: value ?? Self.currentWeekdayMockName)
    }

    private static var currentWeekdayMockName: String {
        switch Calendar.current.component(.weekday, from: .now) {
        case 2:
            return "home_1"
        case 3:
            return "home_2"
        case 4:
            return "home_3"
        case 5:
            return "home_4"
        case 6:
            return "home_5"
        default:
            return "home_\(Int.random(in: 1...5))"
        }
    }
}

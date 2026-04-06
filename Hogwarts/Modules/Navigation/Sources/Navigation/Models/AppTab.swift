import Foundation

enum AppTab: String, CaseIterable, Identifiable {
    case home
    case tasks
    case profile
    case search
    
    var id: String { rawValue }
    
    var title: String {
        switch self {
        case .home:
            "Home"
        case .tasks:
            "Tasks"
        case .profile:
            "Profile"
        case .search:
            "Search"
        }
    }
}

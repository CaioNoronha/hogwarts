import SwiftUI
import DesignSystem

public struct RootView: View {
    
    //Attributes
    @State private var selectedTab: AppTab = .home

    public init() {}

    //MARK: - Body
    public var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", image: DSIcon.Name.castle, value: AppTab.home) {
                ComingSoonView(title: "Home", icon: DSIcon.castle)
            }
            
            Tab("Tasks", image: DSIcon.Name.map, value: AppTab.tasks) {
                ComingSoonView(title: "Tasks", icon: DSIcon.map)
            }

            Tab("Profile", image: DSIcon.Name.hat, value: AppTab.profile) {
                ComingSoonView(title: "Profile", icon: DSIcon.hat)
            }
            
            Tab(value: AppTab.search, role: .search) {
                ComingSoonView(title: "Search", icon: DSIcon.search)
            }
        }
    }
}

#Preview {
    RootView()
}

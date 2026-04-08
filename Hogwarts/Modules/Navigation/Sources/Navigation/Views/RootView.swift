import SwiftUI
import DesignSystem

public struct RootView: View {
    
    //Attributes
    @State private var selectedTab: AppTab = .home

    public init() {}

    //MARK: - Body
    public var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: DSIcon.homeName, value: AppTab.home) {
                ComingSoonView(title: "Home", icon: DSIcon.home)
            }
            
            Tab("Tasks", systemImage: DSIcon.tasksName, value: AppTab.tasks) {
                ComingSoonView(title: "Tasks", icon: DSIcon.tasks)
            }

            Tab("Profile", systemImage: DSIcon.personFullName, value: AppTab.profile) {
                ComingSoonView(title: "Profile", icon: DSIcon.personFull)
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

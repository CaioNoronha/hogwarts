import SwiftUI

public struct RootView: View {
    
    //Attributes
    @State private var selectedTab: AppTab = .home

    public init() {}

    //MARK: - Body
    public var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: "house", value: AppTab.home) {
                ComingSoonView(title: "Home", systemImage: "house")
            }
            
            Tab("Tasks", systemImage: "checklist", value: AppTab.tasks) {
                ComingSoonView(title: "Tasks", systemImage: "checklist")
            }

            Tab("Profile", systemImage: "gift", value: AppTab.profile) {
                ComingSoonView(title: "Profile", systemImage: "person.crop.circle")
            }
            
            Tab(value: AppTab.search, role: .search) {
                ComingSoonView(title: "Search", systemImage: "magnifyingglass")
            }
        }
    }
}

#Preview {
    RootView()
}

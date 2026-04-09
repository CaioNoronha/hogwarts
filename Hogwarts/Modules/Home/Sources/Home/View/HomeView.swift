import SwiftUI
import DesignSystem

public struct HomeView: View {
    
    //Attributes
    private let viewModel: HomeViewModel

    public init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }

    // MARK: - Body
    public var body: some View {
        ZStack {
            Image("background", bundle: .main)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 24) {
                    HomeHeader()
                    HomeClassesSection(classes: viewModel.homeData.classes)
                    HomeSuggestionsSection(suggestions: viewModel.homeData.suggestions)
                    HomeTasksSection(tasks: viewModel.homeData.tasks)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 24)
            }
        }
        .overlay {
            if viewModel.isLoading {
                ProgressView()
                    .tint(DSColor.parchment)
            }
        }
        .task {
            if viewModel.homeData.classes.isEmpty,
               viewModel.homeData.suggestions.isEmpty,
               viewModel.homeData.tasks.isEmpty {
                await viewModel.loadHome()
            }
        }
    }
}

#Preview {
    HomeFeature()
}

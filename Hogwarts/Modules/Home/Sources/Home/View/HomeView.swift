import SwiftUI
import Observation
import DesignSystem

public struct HomeView: View {
    
    //Attributes
    @Bindable private var viewModel: HomeViewModel

    public init(viewModel: HomeViewModel) {
        self._viewModel = Bindable(viewModel)
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
        .alert(
            "Failed to load Home",
            isPresented: Binding(
                get: { viewModel.errorMessage != nil },
                set: { isPresented in
                    if isPresented == false {
                        viewModel.clearError()
                    }
                }
            )
        ) {
            Button("OK", role: .cancel) {}
        } message: {
            Text(viewModel.errorMessage ?? "Unknown error")
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

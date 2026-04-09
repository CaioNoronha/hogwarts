import SwiftUI
import DesignSystem

public struct HomeView: View {
    
    //Attributes
    private let viewModel: any HomeViewModelProtocol

    public init(viewModel: any HomeViewModelProtocol) {
        self.viewModel = viewModel
    }

    //MARK: - Body
    public var body: some View {
        ZStack {
            Image("background", bundle: .main)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 24) {
                    HomeHeader()
                    HomeClassesSection(classes: viewModel.classes)
                    HomeSuggestionsSection(suggestions: viewModel.suggestions)
                    HomeTasksSection(tasks: viewModel.tasks)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 24)
            }
        }
    }
}

#Preview {
    HomeFeature()
}

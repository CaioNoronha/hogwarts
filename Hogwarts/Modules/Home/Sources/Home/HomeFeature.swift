import SwiftUI

public struct HomeFeature: View {
    private let viewModel: any HomeViewModelProtocol

    public init() {
        self.viewModel = HomeViewModel()
    }

    init(viewModel: any HomeViewModelProtocol) {
        self.viewModel = viewModel
    }

    public var body: some View {
        HomeView(viewModel: viewModel)
    }
}

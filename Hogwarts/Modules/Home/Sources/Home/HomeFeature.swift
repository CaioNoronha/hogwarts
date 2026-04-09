import SwiftUI

public struct HomeFeature: View {
    
    //Attributes
    private let viewModel: any HomeViewModelProtocol

    public init() {
        self.viewModel = HomeViewModel()
    }

    init(viewModel: any HomeViewModelProtocol) {
        self.viewModel = viewModel
    }

    // MARK: - Body
    public var body: some View {
        HomeView(viewModel: viewModel)
    }
}

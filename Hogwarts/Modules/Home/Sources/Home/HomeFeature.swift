import SwiftUI
import Network

public struct HomeFeature: View {

    //Attributes

    @State private var viewModel: HomeViewModel

    public init() {
        let networkManager = NetworkManager(baseURL: URL(string: "https://hogwarts.local")!)
        let worker = HomeWorker(networkManager: networkManager)
        _viewModel = State(initialValue: HomeViewModel(worker: worker))
    }

    // MARK: - Body
    public var body: some View {
        HomeView(viewModel: viewModel)
    }
}

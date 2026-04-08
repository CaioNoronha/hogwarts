import SwiftUI
import DesignSystem

internal struct HomeHeader: View {
    internal init() {}

    internal var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Welcome back, Caio!")
                .font(DSFont.laughTales(size: 26))
                .foregroundStyle(DSColor.parchment)
        }
    }
}

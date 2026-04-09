import SwiftUI
import DesignSystem

internal struct HomeHeader: View {
    private let title: String

    internal init() {
        self.title = HomeTitleFactory.makeHeaderTitle()
    }

    //MARK: - Body
    internal var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(title)
                .font(DSFont.laughTales(size: 26))
                .foregroundStyle(DSColor.parchment)
                .padding(.leading, 12)

            DSImage.goldenLine
                .resizable()
                .scaledToFit()
                .frame(width: 260, alignment: .leading)
                .frame(height: 24)
                .offset(x: -14, y: -20)
        }
    }
}

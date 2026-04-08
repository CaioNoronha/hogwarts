import SwiftUI
import DesignSystem

internal struct HomeClassCard: View {
    private let title: String
    private let subtitle: String

    internal init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }

    internal var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(DSFont.laughTales(size: 24))
                .foregroundStyle(.black)
                .lineLimit(1)

            Text(subtitle)
                .font(DSFont.laughTales(size: 16))
                .foregroundStyle(.black.opacity(0.7))
                .lineLimit(2)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(.white, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

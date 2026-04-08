import SwiftUI
import DesignSystem

internal struct HomeInfoCard: View {
    private let title: String
    private let subtitle: String

    internal init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }

    internal var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.headline)
                .foregroundStyle(.primary)

            Text(subtitle)
                .font(.subheadline)
                .foregroundStyle(DSColor.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(.white, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

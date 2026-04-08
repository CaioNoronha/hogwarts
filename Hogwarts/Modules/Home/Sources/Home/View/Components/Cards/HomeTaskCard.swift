import SwiftUI
import DesignSystem

internal struct HomeTaskCard: View {
    private let title: String
    private let subtitle: String

    internal init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }

    internal var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(DSColor.parchment)

            ZStack {
                Image(DSImage.Name.parchment, bundle: .main)
                    .resizable()
                    .scaledToFill()

                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(.white.opacity(0.35))
            }
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))

            VStack(alignment: .leading, spacing: 3) {
                HStack(spacing: 8) {
                    DSIcon.snitch
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .offset(y: -5)

                    Text(title)
                        .font(DSFont.laughTales(size: 20))
                        .foregroundStyle(DSColor.goldDark)
                        .lineLimit(1)
                }

                Text(subtitle)
                    .font(DSFont.crimsonTextRegular(size: 11))
                    .foregroundStyle(.black.opacity(0.7))
                    .lineLimit(2)
                    .padding(.leading, 32)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16)
            .padding(.vertical, 6)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 96)
        .overlay {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(DSColor.goldDark, lineWidth: 8)
        }
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

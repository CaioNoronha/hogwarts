import SwiftUI
import DesignSystem

internal struct HomeInfoCard: View {
    
    //Attributes
    private let title: String
    private let subtitle: String
    private let backgroundColor: Color
    private let backgroundImageName: String?
    private let height: CGFloat?
    private let titleColor: Color
    private let titleFontSize: CGFloat
    private let subtitleFontSize: CGFloat
    private let titleIcon: Image?
    private let contentVerticalPadding: CGFloat

    //Initializer
    internal init(title: String,
                  subtitle: String,
                  backgroundColor: Color = .white,
                  backgroundImageName: String? = nil,
                  height: CGFloat? = nil,
                  titleColor: Color = .black,
                  titleFontSize: CGFloat = 24,
                  subtitleFontSize: CGFloat = 16,
                  titleIcon: Image? = nil,
                  contentVerticalPadding: CGFloat = 12) {
        self.title = title
        self.subtitle = subtitle
        self.backgroundColor = backgroundColor
        self.backgroundImageName = backgroundImageName
        self.height = height
        self.titleColor = titleColor
        self.titleFontSize = titleFontSize
        self.subtitleFontSize = subtitleFontSize
        self.titleIcon = titleIcon
        self.contentVerticalPadding = contentVerticalPadding
    }
    
    //MARK: - Body
    internal var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(backgroundColor)

            if let backgroundImageName {
                ZStack {
                    Image(backgroundImageName, bundle: .main)
                        .resizable()
                        .scaledToFill()

                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(.white.opacity(0.35))
                }
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            }

            VStack(alignment: .leading, spacing: 6) {
                HStack(spacing: 8) {
                    if let titleIcon {
                        titleIcon
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .offset(y: -5)
                    }

                    Text(title)
                        .font(DSFont.laughTales(size: titleFontSize))
                        .foregroundStyle(titleColor)
                        .lineLimit(1)
                }

                Text(subtitle)
                    .font(DSFont.laughTales(size: subtitleFontSize))
                    .foregroundStyle(.black.opacity(0.7))
                    .lineLimit(2)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16)
            .padding(.vertical, contentVerticalPadding)
        }
        .frame(maxWidth: .infinity)
        .frame(height: height)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

import SwiftUI
import DesignSystem

internal struct HomeClassCard: View {
    private let title: String
    private let time: String
    private let imageName: String

    internal init(title: String, time: String, location: String, imageName: String) {
        self.title = title
        self.time = time
        self.imageName = imageName
    }

    internal var body: some View {
        ZStack(alignment: .bottom) {
            Image(imageName, bundle: .main)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            LinearGradient(
                colors: [.clear, .black.opacity(0.55)],
                startPoint: .top,
                endPoint: .bottom
            )

            VStack(spacing: 4) {
                Text(title)
                    .font(DSFont.laughTales(size: 14))
                
                Text(time)
                    .font(DSFont.crimsonTextRegular(size: 12))
            }
            .lineLimit(1)
            .multilineTextAlignment(.center)
            .foregroundStyle(.white)
            .padding(.horizontal, 16)
            .padding(.bottom, 20)
            .frame(maxWidth: .infinity, alignment: .center)
        }
        .frame(width: 160, height: 270)
        .clipShape(RoundedRectangle(cornerRadius: 4, style: .continuous))
    }
}

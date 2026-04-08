import SwiftUI
import DesignSystem

internal struct HomeSuggestionCard: View {
    private let suggestion: HomeData.Suggestion

    internal init(suggestion: HomeData.Suggestion) {
        self.suggestion = suggestion
    }

    internal var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(suggestion.image, bundle: .main)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(height: 220)
                .clipped()

            LinearGradient(
                colors: [.clear, .black.opacity(0.7)],
                startPoint: .top,
                endPoint: .bottom
            )

            VStack(alignment: .leading, spacing: 8) {
                Text(suggestion.title)
                    .font(.title3.weight(.bold))
                    .foregroundStyle(.white)

                Text(suggestion.description)
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.9))
                    .lineLimit(2)
            }
            .padding(20)
        }
        .background(DSColor.primary.opacity(0.12))
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
    }
}

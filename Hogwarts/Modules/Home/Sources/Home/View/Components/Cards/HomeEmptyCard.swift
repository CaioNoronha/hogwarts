import SwiftUI
import DesignSystem

internal struct HomeEmptyCard: View {
    
    //Attributes
    private let title: String

    internal init(title: String) {
        self.title = title
    }

    //MARK: - Body
    internal var body: some View {
        Text(title)
            .font(.subheadline)
            .foregroundStyle(DSColor.secondary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(16)
            .background(.white.opacity(0.7), in: RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

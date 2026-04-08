import SwiftUI
import DesignSystem

internal struct HomeHeader: View {
    internal init() {}

    internal var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Welcome back, wizard")
                .font(.system(.largeTitle, design: .serif, weight: .bold))
                .foregroundStyle(DSColor.primary)

            Text("Your day at Hogwarts is organized right here.")
                .font(.subheadline)
                .foregroundStyle(DSColor.secondary)
        }
    }
}

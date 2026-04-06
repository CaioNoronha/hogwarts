import SwiftUI

struct ComingSoonView: View {
    let title: String
    let systemImage: String

    var body: some View {
        ZStack {
            ContentUnavailableView(
                title,
                systemImage: systemImage,
                description: Text("Coming soon")
            )
        }
    }
}

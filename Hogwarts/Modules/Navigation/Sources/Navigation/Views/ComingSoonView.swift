import SwiftUI

struct ComingSoonView: View {
    let title: String
    let icon: Image

    var body: some View {
        ContentUnavailableView {
            Label {
                Text(title)
            } icon: {
                icon
            }
        } description: {
            Text("Coming soon")
        }
    }
}

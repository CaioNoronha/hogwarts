import SwiftUI
import Navigation
import DesignSystem

@main
struct HogwartsApp: App {
    init() {
        DSFont.registerFonts()
    }

    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

import SwiftUI

public extension Color {
    static let ds = Colors()
}

public struct Colors: Sendable {
    public init() {}

    public var background: Color { Color("background", bundle: .main) }
    public var primary: Color { Color("primary_1", bundle: .main) }
    public var secondary: Color { Color("secondary_1", bundle: .main) }
}

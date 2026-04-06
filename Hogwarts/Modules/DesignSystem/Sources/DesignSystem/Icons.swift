import SwiftUI

public extension Image {
    static let icon = Icons()
}

public struct Icons: Sendable {
    public init() {}

    public var home: Image { Image("house") }
    public var profile: Image { Image("profile") }
    public var search: Image { Image("search") }
}

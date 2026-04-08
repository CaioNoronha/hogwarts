import SwiftUI
import CoreText

public enum DSFont {
    public enum Name {
        public static let laughTalesFile = "laugh_tales"
        public static let laughTales = "LaughTales"
    }

    public static func laughTales(size: CGFloat) -> Font {
        .custom(Name.laughTales, size: size)
    }

    public static func registerFonts() {
        registerFont(named: Name.laughTalesFile, extension: "otf")
    }

    private static func registerFont(named name: String, extension ext: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: ext) else { return }
        CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
    }
}

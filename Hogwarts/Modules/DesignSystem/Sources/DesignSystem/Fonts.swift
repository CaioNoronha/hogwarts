import SwiftUI
import CoreText

public enum DSFont {

    public static func laughTales(size: CGFloat) -> Font {
        .custom("LaughTales", size: size)
    }

    public static func registerFonts() {
        registerFont(named: "laugh_tales", extension: "otf")
    }

    private static func registerFont(named name: String, extension ext: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: ext) else { return }
        CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
    }
}

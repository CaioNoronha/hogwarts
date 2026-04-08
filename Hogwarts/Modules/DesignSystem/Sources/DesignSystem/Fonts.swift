import SwiftUI
import CoreText

public enum DSFont {
    
    //Fonts
    public static func laughTales(size: CGFloat) -> Font { .custom("LaughTales", size: size) }
    public static func harryPotter(size: CGFloat) -> Font { .custom("HarryP", size: size) }
    public static func csFideladrawn(size: CGFloat) -> Font { .custom("CSFidelaDrawn-RegularDemo", size: size) }
    public static func crimsonTextRegular(size: CGFloat) -> Font { .custom("CrimsonText-Regular", size: size) }
    public static func crimsonTextBold(size: CGFloat) -> Font { .custom("CrimsonText-Bold", size: size) }
    public static func crimsonTextItalic(size: CGFloat) -> Font { .custom("CrimsonText-Italic", size: size) }

    //Register Fonts
    public static func registerFonts() {
        registerFont(named: "laugh_tales", extension: "otf")
        registerFont(named: "harry_potter", extension: "ttf")
        registerFont(named: "cs_fideladrawn", extension: "otf")
        registerFont(named: "CrimsonText-Regular", extension: "ttf")
        registerFont(named: "CrimsonText-Bold", extension: "ttf")
        registerFont(named: "CrimsonText-Italic", extension: "ttf")
    }

    private static func registerFont(named name: String, extension ext: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: ext) else { return }
        CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
    }
}

import SwiftUI

public enum DSImage {
    
    //Names
    public enum Name {
        public static let parchment = "parchment"
        public static let background = "background"
    }
    
    //Images
    public static var parchment: Image { Image(Name.parchment, bundle: .main) }
    public static var background: Image { Image(Name.background, bundle: .main) }

}

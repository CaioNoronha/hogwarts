import SwiftUI

public enum DSImage {
    
    //Names
    public enum Name {
        public static let parchment = "parchment"
        public static let background = "background"
        public static let astrology = "astrology"
        public static let books = "books"
        public static let broom = "vassoura"
        public static let darkArts = "dark_arts"
        public static let herbology = "herbology"
        public static let potion = "potion"
        public static let spells = "spells"
        public static let griffindor = "griffindor"
        public static let hufflepuff = "hufflepuff"
        public static let ravenclaw = "ravenclaw"
        public static let slytherin = "slytherin"
    }
    
    //Images
    public static var parchment: Image { Image(Name.parchment, bundle: .main) }
    public static var background: Image { Image(Name.background, bundle: .main) }
    public static var astrology: Image { Image(Name.astrology, bundle: .main) }
    public static var books: Image { Image(Name.books, bundle: .main) }
    public static var broom: Image { Image(Name.broom, bundle: .main) }
    public static var darkArts: Image { Image(Name.darkArts, bundle: .main) }
    public static var herbology: Image { Image(Name.herbology, bundle: .main) }
    public static var potion: Image { Image(Name.potion, bundle: .main) }
    public static var spells: Image { Image(Name.spells, bundle: .main) }
    public static var griffindor: Image { Image(Name.griffindor, bundle: .main) }
    public static var hufflepuff: Image { Image(Name.hufflepuff, bundle: .main) }
    public static var ravenclaw: Image { Image(Name.ravenclaw, bundle: .main) }
    public static var slytherin: Image { Image(Name.slytherin, bundle: .main) }

}

import SwiftUI

public enum DSIcon {
    
    //Names
    public enum Name {
        public static let key = "flying_key"
        public static let castle = "hogwarts"
        public static let glasses = "glasses"
        public static let search = "magnifying_glass"
        public static let map = "marauders_map"
        public static let hat = "sorting_hat"
    }
    
    //Icons
    public static var glasses: Image { Image(Name.glasses, bundle: .main) }
    public static var castle: Image { Image(Name.castle, bundle: .main) }
    public static var key: Image { Image(Name.key, bundle: .main) }
    public static var search: Image { Image(Name.search, bundle: .main) }
    public static var map: Image { Image(Name.map, bundle: .main) }
    public static var hat: Image { Image(Name.hat, bundle: .main) }

}

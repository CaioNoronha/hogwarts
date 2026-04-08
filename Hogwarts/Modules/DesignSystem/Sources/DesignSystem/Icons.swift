import SwiftUI

public enum DSIcon {
    //Names
    public static let homeName = "house"
    public static let tasksName = "checklist"
    public static let personFullName = "person.crop.circle"
    public static let searchName = "magnifyingglass"

    //Images
    public static var home: Image { Image(systemName: homeName) }
    public static var tasks: Image { Image(systemName: tasksName) }
    public static var personFull: Image { Image(systemName: personFullName) }
    public static var search: Image { Image(systemName: searchName) }
}

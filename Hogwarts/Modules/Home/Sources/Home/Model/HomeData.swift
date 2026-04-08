import Foundation

public struct HomeData {
 
    public struct Class {
        public let name: String
        public let time: String
        public let location: String

        public init(name: String, time: String, location: String) {
            self.name = name
            self.time = time
            self.location = location
        }
    }
    
    public struct Suggestion {
        public let title: String
        public let description: String
        public let image: String

        public init(title: String, description: String, image: String) {
            self.title = title
            self.description = description
            self.image = image
        }
    }
    
    public struct Task {
        public let title: String
        public let description: String

        public init(title: String, description: String) {
            self.title = title
            self.description = description
        }
    }
    
    public let classes: [Class]
    public let suggestions: [Suggestion]
    public let tasks: [Task]

    public init(classes: [Class], suggestions: [Suggestion], tasks: [Task]) {
        self.classes = classes
        self.suggestions = suggestions
        self.tasks = tasks
    }
}

public extension HomeData {
    static func mock() -> HomeData {
        .init(
            classes: [ Class(name: "Potions", time: "16h", location: "Dungeon Classroom"),
                       Class(name: "Defense Against the Dark Arts", time: "14h", location: "Tower Wing")
            ],
            suggestions: [
                Suggestion(
                    title: "Visit the Owlery",
                    description: "Your latest letter is ready to be sent before curfew.",
                    image: "owlery"
                ),
                Suggestion(
                    title: "Explore the Forbidden Forest",
                    description: "Hagrid left a clue near the entrance for your next magical stop.",
                    image: "forbidden_forest"
                ),
                Suggestion(
                    title: "Spend time at the Great Hall",
                    description: "Today's enchanted menu is already being served for the houses.",
                    image: "great_hall"
                )
            ],
            tasks: [
                Task(
                    title: "Finish Herbology essay",
                    description: "Write two complete scrolls about magical water plants and compare their healing properties before tomorrow's morning lesson."
                ),
                Task(
                    title: "Pack Quidditch uniform",
                    description: "Practice starts right after your last class, so remember your gloves, broom kit, and the Gryffindor training notes."
                ),
                Task(
                    title: "Return library book",
                    description: "Madam Pince expects the borrowed volume on advanced charms back before sunset, and the pages must remain untouched."
                ),
                Task(
                    title: "Prepare potion ingredients",
                    description: "Gather moonstone powder, dried nettles, and a fresh vial before tonight's potions exercise in the dungeon classroom."
                ),
                Task(
                    title: "Answer owl correspondence",
                    description: "Three letters are waiting in your trunk, and one of them appears to be marked with unusual Ministry wax."
                )
            ]
        )
    }
}

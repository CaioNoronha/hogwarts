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
                )
            ],
            tasks: [
                Task(
                    title: "Finish Herbology essay",
                    description: "Write two scrolls about magical water plants."
                ),
                Task(
                    title: "Pack Quidditch uniform",
                    description: "Practice starts after your last class."
                )
            ]
        )
    }
}

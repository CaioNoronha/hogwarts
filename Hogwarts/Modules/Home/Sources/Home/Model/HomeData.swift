import Foundation
import DesignSystem

public struct HomeData {
 
    public struct Class {
        public let name: String
        public let time: String
        public let location: String
        public let image: String

        public init(name: String, time: String, location: String, image: String) {
            self.name = name
            self.time = time
            self.location = location
            self.image = image
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
            classes: [

                Class(
                    name: "D.A. Dark Arts",
                    time: "10h",
                    location: "Defence Classroom",
                    image: DSImage.Name.darkArts
                ),
                Class(
                    name: "Charms",
                    time: "14h",
                    location: "Charms Corridor",
                    image: DSImage.Name.spells
                ),
                Class(
                    name: "Transmutation",
                    time: "16h",
                    location: "Library",
                    image: DSImage.Name.books
                ),
                Class(
                    name: "Astronomy",
                    time: "21h",
                    location: "Astronomy Tower",
                    image: DSImage.Name.astrology
                ),
                
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
                    title: "Finish the Herbology essay",
                    description: "Complete the two-roll essay on magical water plants and include Professor Sprout's notes before tomorrow morning's class."
                ),
                Task(
                    title: "Review Transfiguration notes",
                    description: "Read over the lesson on switching spells and mark the passages Professor McGonagall said would return in the next practical exercise."
                ),
                Task(
                    title: "Return the Charms textbook",
                    description: "Take your borrowed copy back to the library before supper, and make sure the lending slip is signed at Madam Pince's desk."
                ),
                Task(
                    title: "Prepare Potions ingredients",
                    description: "Set aside moonstone powder, dried nettles, and a clean vial for tomorrow's draught assignment in the dungeon classroom."
                )
            ]
        )
    }
}

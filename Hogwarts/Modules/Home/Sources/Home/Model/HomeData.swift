import Foundation
import DesignSystem

public struct HomeData: Codable, Sendable {
 
    public struct Class: Codable, Sendable {
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
    
    public struct Suggestion: Codable, Sendable {
        public let title: String
        public let description: String
        public let image: String

        public init(title: String, description: String, image: String) {
            self.title = title
            self.description = description
            self.image = image
        }
    }
    
    public struct Task: Codable, Sendable {
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

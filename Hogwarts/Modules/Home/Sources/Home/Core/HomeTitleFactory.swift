import Foundation

enum HomeTitleFactory {
    private static let headerTitles = [
        "Welcome back, Caio!",
        "Good to see you, Caio!",
        "Ready for the day, Caio?",
        "Back at Hogwarts, Caio?"
    ]

    private static let classesTitles = [
        "Today's Classes",
        "Your Classes Today",
        "Lessons for Today",
        "Today's Lessons"
    ]

    private static let suggestionsTitles = [
        "Suggestions",
        "For You Today",
        "A Few Ideas, Caio",
        "Worth Exploring Today"
    ]

    private static let taskTitles = [
        "Don't forget your tasks",
        "Your Tasks",
        "Are you forgetting something",
        "A little magic remains to do",
        "Your next enchanted errands"
    ]

    static func makeHeaderTitle() -> String {
        headerTitles.randomElement() ?? "Welcome back, Caio!"
    }

    static func makeClassesTitle() -> String {
        classesTitles.randomElement() ?? "Today's Classes"
    }

    static func makeSuggestionsTitle() -> String {
        suggestionsTitles.randomElement() ?? "Suggestions"
    }

    static func makeTasksTitle() -> String {
        taskTitles.randomElement() ?? "Your Tasks"
    }
}

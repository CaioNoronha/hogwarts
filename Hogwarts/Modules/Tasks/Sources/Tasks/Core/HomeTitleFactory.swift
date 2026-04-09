import Foundation

enum HomeTitleFactory {
    private static let taskTitles = [
        "Don't forget your tasks",
        "Your Tasks",
        "Are you forgetting something",
        "A little magic remains to do",
        "Your next enchanted errands"
    ]

    static func makeTasksTitle() -> String {
        taskTitles.randomElement() ?? "Your Tasks"
    }
}

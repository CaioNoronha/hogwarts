import Foundation

public struct TasksData {
     
    public struct Task {
        public let title: String
        public let description: String

        public init(title: String, description: String) {
            self.title = title
            self.description = description
        }
    }
    
    public let tasks: [Task]

    public init(tasks: [Task]) {
        self.tasks = tasks
    }
}

public extension TasksData {
    static func mock() -> TasksData {
        .init(tasks: [
                Task(
                    title: "Finish the Herbology essay",
                    description: "Complete the two-roll essay on magical water plants and include Professor Sprout's notes before tomorrow morning's class."
                ),
                Task(
                    title: "Review Transfiguration notes",
                    description: "Read over the lesson on switching spells and mark the passages Professor McGonagall said would return in the next practical exercise."
                ),
                Task(title: "Return the Charms textbook",
                    description: "Take your borrowed copy back to the library before supper, and make sure the lending slip is signed at Madam Pince's desk."),
                Task(
                    title: "Prepare Potions ingredients",
                    description: "Set aside moonstone powder, dried nettles, and a clean vial for tomorrow's draught assignment in the dungeon classroom."
                ),
                Task(
                    title: "Write home before the weekend",
                    description: "Send an owl to your family tonight so your letter reaches them before Saturday post leaves the castle."
                ),
                Task(
                    title: "Practise Defence spells",
                    description: "Spend at least half an hour revising shield charms and disarming movements before next week's paired Defence lesson."
                ),
                Task(
                    title: "Check the Astronomy chart",
                    description: "Update your star chart with the observations from last night's tower session and keep it ready for submission."
                ),
                Task(
                    title: "Polish your cauldron",
                    description: "Clean the brass cauldron after supper so it is ready for Friday's brewing session and passes inspection."
                ),
                Task(
                    title: "Revise History of Magic",
                    description: "Read the assigned chapter on the Goblin Rebellions and note the dates Professor Binns repeated in class."
                ),
                Task(
                    title: "Visit the Owlery noticeboard",
                    description: "Check whether the Hogsmeade permission reminders have been posted and copy the deadline into your planner."
                )
            ]
        )
    }
}

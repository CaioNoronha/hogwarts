import SwiftUI

// MARK: - Classes Section
internal struct HomeClassesSection: View {
    private let classes: [HomeData.Class]

    internal init(classes: [HomeData.Class]) {
        self.classes = classes
    }

    internal var body: some View {
        HomeSection(title: "Today's Classes") {
            ForEach(classes, id: \.name) { item in
                HomeInfoCard(
                    title: item.name,
                    subtitle: "\(item.time) • \(item.location)"
                )
            }
        }
    }
}

// MARK: - Suggestions Section
internal struct HomeSuggestionsSection: View {
    private let suggestions: [HomeData.Suggestion]

    internal init(suggestions: [HomeData.Suggestion]) {
        self.suggestions = suggestions
    }

    internal var body: some View {
        HomeSection(title: "Suggestions") {
            if suggestions.isEmpty {
                HomeEmptyCard(title: "No suggestions for now")
            } else {
                ForEach(suggestions, id: \.title) { item in
                    HomeInfoCard(title: item.title, subtitle: item.description)
                }
            }
        }
    }
}

// MARK: - Tasks Section
internal struct HomeTasksSection: View {
    private let tasks: [HomeData.Task]

    internal init(tasks: [HomeData.Task]) {
        self.tasks = tasks
    }

    internal var body: some View {
        HomeSection(title: "Pending Tasks") {
            if tasks.isEmpty {
                HomeEmptyCard(title: "You are all caught up")
            } else {
                ForEach(tasks, id: \.title) { item in
                    HomeInfoCard(title: item.title, subtitle: item.description)
                }
            }
        }
    }
}

internal struct HomeSection<Content: View>: View {
    private let title: String
    @ViewBuilder private let content: () -> Content

    internal init(title: String, @ViewBuilder content: @escaping () -> Content) {
        self.title = title
        self.content = content
    }

    internal var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.headline)
                .foregroundStyle(.primary)

            content()
        }
    }
}

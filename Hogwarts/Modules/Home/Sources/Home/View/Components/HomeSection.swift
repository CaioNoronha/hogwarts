import SwiftUI
import DesignSystem

// MARK: - Classes Section
internal struct HomeClassesSection: View {
    private let classes: [HomeData.Class]

    internal init(classes: [HomeData.Class]) {
        self.classes = classes
    }

    internal var body: some View {
        HomeSection(title: "Today's Classes") {
            ForEach(classes, id: \.name) { item in
                HomeClassCard(title: item.name, subtitle: "\(item.time) • \(item.location)")
            }
        }
    }
}

// MARK: - Suggestions Section
internal struct HomeSuggestionsSection: View {
    private let suggestions: [HomeData.Suggestion]
    @State private var selectedIndex: Int = 0

    internal init(suggestions: [HomeData.Suggestion]) {
        self.suggestions = suggestions
    }

    internal var body: some View {
        HomeSection(title: "Suggestions") {
            if suggestions.isEmpty {
                HomeEmptyCard(title: "No suggestions for now")
            } else {
                VStack(spacing: 12) {
                    TabView(selection: $selectedIndex) {
                        ForEach(Array(suggestions.enumerated()), id: \.offset) { index, item in
                            HomeSuggestionCard(suggestion: item)
                                .padding(.horizontal, 2)
                                .tag(index)
                        }
                    }
                    .frame(height: 220)
                    .tabViewStyle(.page(indexDisplayMode: .never))

                    HStack(spacing: 8) {
                        ForEach(suggestions.indices, id: \.self) { index in
                            Capsule()
                                .fill(index == selectedIndex ? DSColor.primary : DSColor.secondary.opacity(0.25))
                                .frame(width: index == selectedIndex ? 20 : 8, height: 8)
                        }
                    }
                }
            }
        }
    }
}

// MARK: - Tasks Section
internal struct HomeTasksSection: View {
    private let tasks: [HomeData.Task]
    private let title: String

    internal init(tasks: [HomeData.Task]) {
        self.tasks = tasks
        self.title = HomeTitleFactory.makeTasksTitle()
    }

    internal var body: some View {
        HomeSection(title: title) {
            if tasks.isEmpty {
                HomeEmptyCard(title: "You are all caught up")
            } else {
                ForEach(tasks, id: \.title) { item in
                    HomeTaskCard(title: item.title, subtitle: item.description)
                }
            }
        }
    }
}

// MARK: - Home Section
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
                .font(DSFont.csFideladrawn(size: 32))
                .foregroundStyle(.primary)

            content()
        }
    }
}

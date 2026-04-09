// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Tasks",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Tasks",
            targets: ["Tasks"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Tasks"
        ),
        .testTarget(
            name: "TasksTests",
            dependencies: ["Tasks"]
        ),
    ],
    swiftLanguageModes: [.v6]
)

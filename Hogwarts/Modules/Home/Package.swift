// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Home",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "Home",
            targets: ["Home"]
        ),
    ],
    targets: [
        .target(
            name: "Home"
        ),
        .testTarget(
            name: "HomeTests",
            dependencies: ["Home"]
        ),
    ],
    swiftLanguageModes: [.v6]
)

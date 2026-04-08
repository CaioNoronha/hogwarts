// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Navigation",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "Navigation",
            targets: ["Navigation"]
        ),
    ], dependencies: [
        .package(path: "../DesignSystem"),
        .package(path: "../Home")
    ],
    targets: [
        .target(
            name: "Navigation",
            dependencies: [
                .product(name: "DesignSystem", package: "DesignSystem"),
                .product(name: "Home", package: "Home")
            ]
        ),
        .testTarget(
            name: "NavigationTests",
            dependencies: ["Navigation"]
        ),
    ],
    swiftLanguageModes: [.v6]
)

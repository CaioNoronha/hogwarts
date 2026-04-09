// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Home",
    platforms: [
        .iOS(.v18)
    ],
    //Products
    products: [
        .library(
            name: "Home",
            targets: ["Home"]
        ),
    ],
    //Dependencies
    dependencies: [
        .package(path: "../DesignSystem"),
        .package(path: "../Network"),
        .package(path: "../Utils")
    ],
    //Targets
    targets: [
        .target(
            name: "Home",
            dependencies: [
                .product(name: "DesignSystem", package: "DesignSystem"),
                .product(name: "Network", package: "Network"),
                .product(name: "Utils", package: "Utils")
            ]
        ),
        .testTarget(
            name: "HomeTests",
            dependencies: ["Home"]
        ),
    ],
    swiftLanguageModes: [.v6]
)

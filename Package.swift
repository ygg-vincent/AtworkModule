// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AtworkModule",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AtworkModule",
            targets: ["AtworkModule"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/example-package-playingcard", from: "3.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AtworkModule",
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "AtworkModuleTests",
            dependencies: ["AtworkModule"]
        ),
    ]
)

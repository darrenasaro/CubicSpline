// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CubicSpline",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CubicSpline",
            targets: ["CubicSpline"]),
       .library(name: "CubicSplineUI", targets: ["CubicSplineUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms.git", .upToNextMajor(from: "1.0.0")),
        // Dependencies declare other packages that this package depends on.
        //.package(url: "https://github.com/apple/swift-algorithms", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CubicSpline",
            dependencies: [.product(name: "Algorithms", package: "swift-algorithms")]),
        .target(
            name: "CubicSplineUI",
            dependencies: ["CubicSpline"]),
        .testTarget(
            name: "CubicSplineTests",
            dependencies: ["CubicSpline"]),
    ]
)

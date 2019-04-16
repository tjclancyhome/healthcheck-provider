// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HealthcheckProvider",
    products: [
        .library(
            name: "HealthcheckProvider",
            targets: ["HealthcheckProvider"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "2.4.4")),
    ],
    targets: [
        .target(
            name: "HealthcheckProvider",
            dependencies: ["Vapor"]),
        .testTarget(
            name: "HealthcheckProviderTests",
            dependencies: ["HealthcheckProvider", "Vapor", "Testing"]),
    ]
)

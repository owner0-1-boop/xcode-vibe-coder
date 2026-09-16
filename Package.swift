// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XcodeVibeCoder",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .library(name: "XcodeVibeCoder", targets: ["XcodeVibeCoder"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax.git", from: "509.0.0"),
    ],
    targets: [
        .target(
            name: "XcodeVibeCoder",
            dependencies: [
                .product(name: "SwiftSyntax", package: "swift-syntax"),
                .product(name: "SwiftParser", package: "swift-syntax"),
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "XcodeVibeCoder-Tests",
            dependencies: ["XcodeVibeCoder"],
            path: "Tests"
        ),
    ]
)

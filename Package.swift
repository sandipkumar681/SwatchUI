// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SwatchUI",
    platforms: [.iOS(.v17), .macOS(.v14)],   // must be ≥ SwatchKit's platforms
    products: [
        .library(name: "SwatchUI", targets: ["SwatchUI"])
    ],
    dependencies: [
        // "from" = any 1.x.y at or above 1.0.0, never 2.0.0
        .package(url: "https://github.com/sandipkumar681/SwatchKit.git", from: "1.1.0")
    ],
    targets: [
        .target(
            name: "SwatchUI",
            dependencies: [.product(name: "SwatchKit", package: "SwatchKit")]
        ),
        .testTarget(name: "SwatchUITests", dependencies: ["SwatchUI"])
    ]
)

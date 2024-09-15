import PackageDescription

let package = Package(
    name: "VV",
    platforms: [.macOS(.v11)],
    dependencies: [
        .package(url: "https://github.com/TokamakUI/Tokamak", from: "0.11.0"),
        .package(url: "https://github.com/swiftwasm/carton", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "VV",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ]
        ),
    ]
)


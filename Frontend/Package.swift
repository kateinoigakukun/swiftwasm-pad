// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "TokamakPad",
    products: [
        .executable(name: "TokamakPad", targets: ["TokamakPad"]),
    ],
    dependencies: [
        .package(name: "JavaScriptKit", url: "https://github.com/swiftwasm/JavaScriptKit", from: "0.5.0"),
        .package(name: "Tokamak", url: "https://github.com/TokamakUI/Tokamak", from: "0.3.0"),
    ],
    targets: [
        .target(
            name: "TokamakPad",
            dependencies: [
                .product(name: "JavaScriptKit", package: "JavaScriptKit"),
                .product(name: "TokamakShim", package: "Tokamak")
            ]),
    ]
)

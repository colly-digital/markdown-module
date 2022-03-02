// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "markdown-module",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        .library(name: "MarkdownModule", targets: ["MarkdownModule"]),
    ],
    dependencies: [
        .package(url: "https://github.com/feathercms/feather-core", .revision("a54c9323416e5a45f7a2d9b4ee601444ff04f154")),
        .package(url: "https://github.com/JohnSundell/Ink", from: "0.5.0"),
    ],
    targets: [
        .target(name: "MarkdownModule", dependencies: [
            .product(name: "FeatherCore", package: "feather-core"),
            .product(name: "Ink", package: "Ink"),
        ],
        resources: [
            .copy("Bundle"),
        ]),
    ]
)

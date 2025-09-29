// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SwinjectAutoregistration",
    products: [
        .library(
            name: "SwinjectAutoregistration",
            targets: ["SwinjectAutoregistration"]),
        .library(
            name: "SwinjectAutoregistration-Dynamic",
            type: .dynamic,
            targets: ["SwinjectAutoregistration"])

    ],
    dependencies: [
        .package(url: "https://github.com/iosflashintegro/Swinject.git", .exact("2.10.0-VSDC"))
    ],
    targets: [
        .target(
            name: "SwinjectAutoregistration",
            dependencies: [
                .product(name: "Swinject-Dynamic", package: "Swinject")
            ],
            path: "Sources"),
    ]
)

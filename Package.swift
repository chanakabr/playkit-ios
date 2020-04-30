// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "PlayKit",
    products: [
        .library(
            name: "PlayKit",
            targets: ["PlayKit"]),
    ],
    dependencies: [
    .package(name: "KalturaNetKit", url: "https://github.com/kaltura/netkit-ios.git", .branch("spm")),
    .package(name: "PlayKitUtils", url: "https://github.com/kaltura/playkit-ios-utils.git", .branch("spm")),
    .package(url: "https://github.com/DaveWoodCom/XCGLogger.git", from: "7.0.1"),
    .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "4.3.0")
    ],
    targets: [
        .target(
            name: "PlayKit",
            dependencies: [
                "KalturaNetKit",
                "PlayKitUtils",
                "XCGLogger",
                "SwiftyJSON"
            ],
            path: "Classes"
        ),
        .testTarget(
            name: "PlayKitTests",
            dependencies: ["PlayKit"]),
    ]
)

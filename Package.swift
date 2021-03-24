// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Reachability",
    products: [
        .library(
            name: "Reachability",
            targets: ["ReachabilityObjc", "Reachability"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ReachabilityObjc",
            path: "Sources/ObjC"
        ),
        .target(
            name: "Reachability",
            dependencies: ["ReachabilityObjc"],
            path: "Sources/Swift"
        )
    ]
)

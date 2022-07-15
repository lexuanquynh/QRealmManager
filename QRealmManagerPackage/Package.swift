// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QRealmManagerPackage",
    platforms: [
            .macOS(.v10_13),
            .iOS(.v11),
            .tvOS(.v11)
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "QRealmManagerPackage",
            targets: ["QRealmManagerPackage"]),
    ],
    dependencies: [
//        .package(url: "https://github.com/realm/realm-swift.git"),
//        .package(url: "https://github.com/realm/realm-swift", .branch("master")),
        .package(name: "Realm", url: "https://github.com/realm/realm-swift", from: "10.28.2")
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "QRealmManagerPackage",
            dependencies: ["Realm", .product(name: "RealmSwift", package: "Realm")]),
        .testTarget(
            name: "QRealmManagerPackageTests",
            dependencies: ["QRealmManagerPackage"]),
    ]
)

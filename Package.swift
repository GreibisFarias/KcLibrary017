// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KcLibrary017",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "KcLibrary017",
            targets: ["KcLibrary017"]),
    ],
    dependencies: [
        .package(url: "https://github.com/evgenyneu/keychain-swift", from: "20.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "KcLibrary017",
            dependencies: [.product(name: "KeychainSwift", package: "keychain-swift")]),
        
        .testTarget(
            name: "KcLibrary017Tests",
            dependencies: ["KcLibrary017"]),
    ]
)



// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.0"
let checksum = ""
let coreVersion = "1.1.0"

let package = Package(
    name: "AdisonOfferwallGlobalNativeAd",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AdisonOfferwallGlobalNativeAd",
            targets: ["AdisonOfferwallGlobalNativeAd", "AdisonOfferwallGlobalNativeAdTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-global-core", exact: Version(stringLiteral: coreVersion))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "AdisonOfferwallGlobalNativeAd",
            url: "https://github.com/adison-ads/adison-offerwall-global-native-ad/releases/download/\(version)/AdisonOfferwallGlobalNativeAd.zip",
            checksum: checksum
        ),
        .target(
            name: "_AdisonOfferwallGlobalNativeAd",
            dependencies: [
                .product(name: "AdisonOfferwallGlobalCore", package: "adison-offerwall-global-core")
            ],
            path: "Sources"
        )
    ]
)

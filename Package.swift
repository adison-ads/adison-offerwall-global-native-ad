// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.3.0"
let checksum = "f96e412db8b593a051edb08897c6541abdd17f619093953561522ab9f19a51ea"

let package = Package(
    name: "AdisonOfferwallGlobalNativeAd",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AdisonOfferwallGlobalNativeAd",
            targets: ["AdisonOfferwallGlobalNativeAd"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "AdisonOfferwallGlobalNativeAd",
            url: "https://github.com/adison-ads/adison-offerwall-global-native-ad/releases/download/\(version)/AdisonOfferwallGlobalNativeAd.zip",
            checksum: checksum
        ),
    ]
)

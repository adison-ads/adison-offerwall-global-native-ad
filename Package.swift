// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.3.2"
let checksum = "6b4cb0dd7aec1f812bc882fc6a987374b35a5c175990332639ac7bbdad4573bd"

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

// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ionicup-models",
    products: [
        .library(name: "IonicupModels", targets: ["IonicupModels"])
    ],
    targets: [
        .target(name: "IonicupModels")
    ]
)

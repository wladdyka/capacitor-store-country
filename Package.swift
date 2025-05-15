// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorStoreCountry",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorStoreCountry",
            targets: ["CapacitorStoreCountryPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "CapacitorStoreCountryPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CapacitorStoreCountryPlugin"),
        .testTarget(
            name: "CapacitorStoreCountryPluginTests",
            dependencies: ["CapacitorStoreCountryPlugin"],
            path: "ios/Tests/CapacitorStoreCountryPluginTests")
    ]
)

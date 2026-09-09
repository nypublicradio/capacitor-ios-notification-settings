// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorIosNotificationSettings",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "CapacitorIosNotificationSettings",
            targets: ["capacitorIosNotificationSettingsPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "8.0.0")
    ],
    targets: [
        .target(
            name: "capacitorIosNotificationSettingsPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/capacitorIosNotificationSettingsPlugin"),
        .testTarget(
            name: "capacitorIosNotificationSettingsPluginTests",
            dependencies: ["capacitorIosNotificationSettingsPlugin"],
            path: "ios/Tests/capacitorIosNotificationSettingsPluginTests")
    ]
)
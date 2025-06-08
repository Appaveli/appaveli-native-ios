// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "AppaveliNativeIOS",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "appaveli-ios", targets: ["AppaveliNativeIOS"])
    ],
    targets: [
        .executableTarget(
            name: "AppaveliNativeIOS",
            path: "Sources/AppaveliNativeIOS"
        ),
        .testTarget(
            name: "AppaveliNativeIOSTests",
            dependencies: ["AppaveliNativeIOS"],
            path: "Tests/AppaveliNativeIOSTests"
        )
    ]
)

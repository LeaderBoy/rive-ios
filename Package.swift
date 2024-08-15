// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "RiveRuntime",
    platforms: [.iOS("14.0"), .macOS("11.0")],
    products: [
        .library(
            name: "RiveRuntime",
            targets: ["RiveRuntime"])],
    targets: [
        .binaryTarget(
            name: "RiveRuntime",
            url: "https://github.com/LeaderBoy/rive-ios/releases/download/6.0.3/RiveRuntime.xcframework.zip",
            checksum: "03a432aa8c7efa113bf5c94dc5fa89c9ffa3d62135c63e4a27dd98212a101f8e"
        ),
        .target(
            name: "RiveRuntime-Resources",
            path: "Resources",
            resources: [.copy("PrivacyInfo.xcprivacy")]
        )
    ]
)

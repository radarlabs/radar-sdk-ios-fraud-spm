// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDKFraud",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "RadarSDKFraud", targets: ["RadarSDKFraud", "_RadarStubFraud"]),
    ],
    targets: [
        .target(name: "_RadarStubFraud"),
        .binaryTarget(
            name: "RadarSDKFraud",
            url: "https://github.com/radarlabs/radar-sdk-ios-fraud-spm/releases/download/0.0.1-beta.8/RadarSDKFraud.xcframework.zip",
            checksum: "fb69898bbb1a9660939f46176b616556d564108b00568d52f1cfc36a6fea93c0"
        )
    ]
)

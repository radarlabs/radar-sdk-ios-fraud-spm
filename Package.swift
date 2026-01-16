// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDKFraud",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "RadarSDKFraud", targets: ["RadarSDKFraud", "_RadarStub"]),
    ],
    targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDKFraud",
            url: "https://github.com/radarlabs/radar-sdk-ios-fraud-spm/releases/download/0.0.1-beta.4/RadarSDKFraud.xcframework.zip",
            checksum: "5c0d289db677b07f437d5631bae73c9e787a6afbea8fea33f2294ac3fba42d98"
        )
    ]
)

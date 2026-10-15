// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDKFraud",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "RadarSDKFraud", targets: ["RadarSDKFraud", "_RadarStubFraud"]),
    ],
    targets: [
        .target(name: "_RadarStubFraud"),
        .binaryTarget(
            name: "RadarSDKFraud",
            url: "https://github.com/radarlabs/radar-sdk-ios-fraud-spm/releases/download/1.6.0/RadarSDKFraud.xcframework.zip",
            checksum: "44346d9a8e67b473c7042750a122f29b55b0d03c0f5291948239d833c36e7bf4"
        )
    ]
)

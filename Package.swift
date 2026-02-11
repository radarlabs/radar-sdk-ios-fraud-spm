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
            url: "https://github.com/radarlabs/radar-sdk-ios-fraud-spm/releases/download/0.0.2-beta.9/RadarSDKFraud.xcframework.zip",
            checksum: "c3e800c8616abd83a97c7ef120cfed6a8614dc56bfb3f8440f98d0acd8c41d0a"
        )
    ]
)

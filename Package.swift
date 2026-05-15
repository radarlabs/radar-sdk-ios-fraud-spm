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
            url: "https://github.com/radarlabs/radar-sdk-ios-fraud-spm/releases/download/1.2.0/RadarSDKFraud.xcframework.zip",
            checksum: "97b83e62bcec8f42954838dcbfa6a7450a56ad181e974ba17db19454f49e2515"
        )
    ]
)

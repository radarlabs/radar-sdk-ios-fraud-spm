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
            checksum: "111df7e2df4e47255108fd58f4fce44d8b82ad2fb9232a0dcdf190af1bba9e7e"
        )
    ]
)

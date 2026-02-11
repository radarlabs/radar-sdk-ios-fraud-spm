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
            url: "https://github.com/radarlabs/radar-sdk-ios-fraud-spm/releases/download/0.0.2-beta.7/RadarSDKFraud.xcframework.zip",
            checksum: "3f6e7896350fd6c5a57ad1fc8c944b45aeffde912058a7ca35c30bbfa743e6e3"
        )
    ]
)

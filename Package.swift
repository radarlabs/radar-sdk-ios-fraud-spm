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
            url: "https://github.com/radarlabs/radar-sdk-ios-fraud-spm/releases/download/1.4.0-beta.1/RadarSDKFraud.xcframework.zip",
            checksum: "c00dabfcabcbdcdd7c4bed648d0cf849fb46fe4e3ac6ea55e52b2eb5d378d040"
        )
    ]
)

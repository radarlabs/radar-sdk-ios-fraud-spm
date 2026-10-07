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
            url: "https://github.com/radarlabs/radar-sdk-ios-fraud-spm/releases/download/1.4.1/RadarSDKFraud.xcframework.zip",
            checksum: "426a38a2cfea558c7114bfcf046507c70f67d2f72e6689dfa3bb5c4d74cca0fb"
        )
    ]
)

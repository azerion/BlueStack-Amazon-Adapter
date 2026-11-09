// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlueStackAmazonPublisherServicesAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "BlueStackAmazonPublisherServicesAdapter",
            targets: ["BlueStackAmazonPublisherServicesAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/azerion/BlueStack-Bidding-Adapter.git", exact: "6.1.0"),
        .package(url: "https://github.com/amzn/swift-package-manager-amazon-aps", exact: "5.6.6")
    ],
    targets: [
        .target(
            name: "BlueStackAmazonPublisherServicesAdapterTarget",
            dependencies: [
                .product(name: "AmazonPublisherServicesSDK", package: "swift-package-manager-amazon-aps"),
                .target(name: "BlueStackAmazonPublisherServicesAdapter", condition: .when(platforms: [.iOS])),
                .product(name: "BlueStackBiddingAdapter", package: "BlueStack-Bidding-Adapter", condition: .when(platforms: [.iOS]))
            ],
            path: "BlueStackAmazonPublisherServicesAdapterWrapper"
        ),
        .binaryTarget(
            name: "BlueStackAmazonPublisherServicesAdapter",
            path: "BlueStackAmazonPublisherServicesAdapter.xcframework"
        )
    ]
)

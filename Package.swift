// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "YMKStylingAutomotiveNavigation",
    defaultLocalization: "en",
    platforms: [.iOS("15.0")],
    products: [
        .library(
            name: "YMKStylingAutomotiveNavigation",
            type: .static,
            targets: [
                "YMKStylingAutomotiveNavigation",
                "YMKStylingAutomotiveNavigationResources"
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/yandex/navikit-ios", exact: "4.39.0"),
    ],
    targets: [
        .binaryTarget(
            name: "YMKStylingAutomotiveNavigation",
            url: "https://maps-ios-pods-public.s3.yandex.net/YMKStylingAutomotiveNavigation-4.39.0.framework.zip",
            checksum: "8affbd41e5d29c1486fc69a120e216019fd540ed055720e9589349b6ef6262b2"
        ),
        .target(
            name: "YMKStylingAutomotiveNavigationResources",
            dependencies: [
                .product(name: "YandexMapsMobileNavikit", package: "navikit-ios"),
            ],
            path: "Resources",
            resources: [.process("Contents")]
        )
    ]
)

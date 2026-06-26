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
        .package(url: "https://github.com/yandex/navikit-ios", exact: "4.39.1"),
    ],
    targets: [
        .binaryTarget(
            name: "YMKStylingAutomotiveNavigation",
            url: "https://maps-ios-pods-public.s3.yandex.net/YMKStylingAutomotiveNavigation-4.39.1.framework.zip",
            checksum: "0fb894c05e4c72cf8f0805a5fabc9cf88e1d4d170846d399ba2197cd5fb6746a"
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

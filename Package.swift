// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "YMKStylingAutomotiveNavigation",
    defaultLocalization: "en",
    platforms: [.iOS("12.0")],
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
        .package(url: "https://github.com/yandex/navikit-ios", exact: "4.12.0"),
    ],
    targets: [
        .binaryTarget(
            name: "YMKStylingAutomotiveNavigation",
            url: "https://maps-ios-pods-public.s3.yandex.net/YMKStylingAutomotiveNavigation-4.12.0.framework.zip",
            checksum: "f06e37cd31c3ece96fb2c14a4214c19e8c9933cb394eaca2850b18d9f26fa96b"
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

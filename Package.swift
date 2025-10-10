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
        .package(url: "https://github.com/yandex/navikit-ios", exact: "4.24.0"),
    ],
    targets: [
        .binaryTarget(
            name: "YMKStylingAutomotiveNavigation",
            url: "https://maps-ios-pods-public.s3.yandex.net/YMKStylingAutomotiveNavigation-4.24.0.framework.zip",
            checksum: "2611bfe1aa18af7effebd7382198cb9e0747435739a14630870f064fa5142c8c"
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

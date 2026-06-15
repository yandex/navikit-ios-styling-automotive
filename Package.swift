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
        .package(url: "https://github.com/yandex/navikit-ios", exact: "4.38.1"),
    ],
    targets: [
        .binaryTarget(
            name: "YMKStylingAutomotiveNavigation",
            url: "https://maps-ios-pods-public.s3.yandex.net/YMKStylingAutomotiveNavigation-4.38.1.framework.zip",
            checksum: "b9416eb8e2aa5116dc48e86ee74f5b649c6b7b87ef08f4fb1e80b88fea923091"
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

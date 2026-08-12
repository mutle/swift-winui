// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-winui",
    products: [
        .library(name: "WinUI", type: .static, targets: ["WinUI"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/mutle/swift-cwinrt",
            revision: "e9db556eb47958cd904366647b1a45c831cbc38f"
        ),
        .package(
            url: "https://github.com/mutle/swift-uwp",
            revision: "9506997bbc759b168cf45a2022a22a2b4294d7c7"
        ),
        .package(
            url: "https://github.com/mutle/swift-windowsappsdk",
            revision: "e73788d2724a8d3b231d78c9739a0147002331f5"
        ),
        .package(
            url: "https://github.com/mutle/swift-windowsfoundation",
            revision: "04ba0d2f81c2cf137147de485619fa5a5d3ab974"
        ),
        .package(
            url: "https://github.com/mutle/swift-webview2core",
            revision: "bc9eabee929d13a25b1fa7c5668ade46cb863e3a"
        ),
    ],
    targets: [
        .target(
            name: "WinUI",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "UWP", package: "swift-uwp"),
                .product(name: "WinAppSDK", package: "swift-windowsappsdk"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
                .product(name: "WebView2Core", package: "swift-webview2core"),
            ]
        ),
        .testTarget(
            name: "WinUIImportSmokeTests",
            dependencies: ["WinUI"]
        ),
        .testTarget(
            name: "WinUIWindowsAPICompileSmokeTests",
            dependencies: ["WinUI"]
        ),
    ]
)

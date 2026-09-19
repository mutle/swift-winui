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
            revision: "a5988c9ec83d9ae1f1a4cd83051127f625ff60f7"
        ),
        .package(
            url: "https://github.com/mutle/swift-uwp",
            revision: "7aff869b2a6badeeaf82b9f68837f755995154e9"
        ),
        .package(
            url: "https://github.com/mutle/swift-windowsappsdk",
            revision: "94b5dced14a1613fede950662bc966eee913a536"
        ),
        .package(
            url: "https://github.com/mutle/swift-windowsfoundation",
            revision: "a112318dc42f2031b18a7a2db5d03fc46f452449"
        ),
        .package(
            url: "https://github.com/mutle/swift-webview2core",
            revision: "2328878e8ac5c4989dbbcb919e36d0bace919950"
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

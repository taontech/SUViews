// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SUViews",
    platforms: [.iOS(.v16), .tvOS(.v16), .macOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SUViews",
            targets: ["SUViews"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SUViews",
            dependencies: []),
        .testTarget(
            name: "SUViewsTests",
            dependencies: ["SUViews"]),
    ]
)
// swift-tools-version:5.3
//import PackageDescription
//
//let package = Package(
//  name: "ToastUI",
//  platforms: [.iOS(.v14), .tvOS(.v14), .macOS(.v11)],
//  products: [
//    .library(
//      name: "ToastUI",
//      targets: ["ToastUI"]
//    )
//  ],
//  targets: [
//    .target(
//      name: "ToastUI"
//    )
//  ]
//)

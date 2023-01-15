// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let dependencies: [PackageDescription.Package.Dependency] = [
  .package(url: "https://github.com/SwiftyTesseract/SwiftyTesseract.git", .exact("4.0.0")),
  .package(url: "https://github.com/alinradut/QKMRZParser.git", .upToNextMajor(from: "1.0.0")),
]

let package = Package(
    name: "QKMRZScanner",
    platforms: [.iOS(.v11), .macOS(.v10_13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "QKMRZScanner",
            targets: ["QKMRZScanner"]),
    ],
    dependencies: dependencies,
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "QKMRZScanner",
            dependencies: [
                .product(name: "SwiftyTesseract", package: "SwiftyTesseract"),
                .product(name: "QKMRZParser", package: "QKMRZParser"),
            ],
            path: "QKMRZScanner",
            exclude: ["Supporting Files/Info.plist"],
            resources: [.copy("Supporting Files/tessdata/ocrb.traineddata")]),
    ]
)
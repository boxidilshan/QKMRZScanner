// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "QKMRZScanner",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "QKMRZScanner", targets: ["QKMRZScanner"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jlab13/QKMRZParser.git", from: "1.0.3"),
        .package(url: "https://github.com/SwiftyTesseract/SwiftyTesseract.git", from: "4.0.1"),
    ],    
    targets: [
        .target(name: "QKMRZScanner",
            dependencies: ["QKMRZParser", "SwiftyTesseract"],
            path: "QKMRZScanner",
                resources: [.copy("tessdata")]
        ),
    ],
    swiftLanguageVersions: [.version("5")]
)
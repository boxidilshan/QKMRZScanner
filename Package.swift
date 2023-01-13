// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
  name: "QKMRZScanner",
  products: [
    .library(
      name: "QKMRZScanner",
      targets: ["QKMRZScanner"]),
  ],
  dependencies: [
    .package(url: "https://github.com/itopstack/QKMRZParser", exact: "1.0.4"),
    .package(url: "https://github.com/SwiftyTesseract/SwiftyTesseract", from: "4.0.1"),
  ],
  targets: [
    .target(
      name: "QKMRZScanner",
      dependencies: ["QKMRZParser", "SwiftyTesseract"],
      path: "QKMRZScanner"),
    .testTarget(
      name: "QKMRZScannerTests",
      dependencies: ["QKMRZScanner"],
      path: "Tests"),
  ]
)
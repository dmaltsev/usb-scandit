// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Scandit Data Capture SDK",
    platforms: [.iOS(.v11)],
    products: [
		.library(name: "ScanditBarcodeCapture", targets: ["ScanditBarcodeCapture"]),
		.library(name: "ScanditCaptureCore", targets: ["ScanditCaptureCore"])
    ],
    dependencies: [],
    targets: [
		.binaryTarget(name: "ScanditBarcodeCapture", url: "https://github.com/dmaltsev/scandit-binary/blob/main/scandit-datacapture-ios-barcode-6.12.0-beta.2-xcframework.zip?raw=true", checksum: "7b9016a3a605ca14054e67c5a9fb860b5bc8305b276e600f08ef94dd9872255b"),
		.binaryTarget(name: "ScanditCaptureCore", url: "https://github.com/dmaltsev/scandit-binary/blob/main/scandit-datacapture-ios-core-6.12.0-beta.2-xcframework.zip?raw=true", checksum: "06ae63edafa4bb17dd019c77ff2246be0c057b5f67ea8c1580d0d502269dc106")
    ]
)

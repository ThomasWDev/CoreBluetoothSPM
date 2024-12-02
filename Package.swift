// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MySPMProject",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .watchOS(.v6),
        .tvOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MySPMProject",
            targets: ["MySPMProject"]),
    ],
    dependencies: [
        // Add any dependencies here if needed
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MySPMProject",
            dependencies: [],
            path: "Sources/MySPMProject",
            sources: ["CoreBluetoothManager.swift", "MySPMProject.swift", "Sensor.swift", "SensorDataHandler.swift", "URLSessionProtocol.swift"]
        ),
        .testTarget(
            name: "MySPMProjectTests",
            dependencies: ["MySPMProject"],
            path: "Tests/MySPMProjectTests",
            sources: ["CoreBluetoothManagerTests.swift", "SensorDataHandlerTests.swift", "MySPMProjectTests.swift", "SensorTests.swift", "MockSensor.swift"]
        ),
    ]
)
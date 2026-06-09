// swift-tools-version: 6.2
//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift Algorithms open source project
//
// Copyright (c) 2020 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
//
//===----------------------------------------------------------------------===//

import PackageDescription

let package = Package(
  name: "swift-algorithms",
	platforms: [.iOS(.v12), .watchOS(.v9), .tvOS(.v15), .macOS(.v12)],
  products: [
    .library(
      name: "Algorithms",
      targets: ["Algorithms"])
  ],
  dependencies: [
    .package(url: "https://github.com/importRyan/swift-numerics", revision: "efcce417c886aa3bc6da35b06dd708bada6147a5")
  ],
  targets: [
    .target(
      name: "Algorithms",
      dependencies: [
        .product(name: "RealModule", package: "swift-numerics")
      ]),
    .testTarget(
      name: "SwiftAlgorithmsTests",
      dependencies: ["Algorithms"]),
  ]
)

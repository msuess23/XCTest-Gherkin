// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "XCTest_Gherkin",
    products: [
        .library(
            name: "XCTest_Gherkin",
            targets: ["XCTest_Gherkin"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "XCTest_Gherkin_ObjC",
            dependencies: [],
            path: "Pod",
            exclude: [
                "Core/Background.swift",
                "Core/ClassHelperMethods.swift",
                "Core/Example.swift",
                "Core/LevenshteinDistance.swift",
                "Core/MatchedStringRepresentable.swift",
                "Core/PageObject.swift",
                "Core/Step.swift",
                "Core/StepDefiner.swift",
                "Core/StringGherkinExtension.swift",
                "Core/XCTestCase+Gherkin.swift",
                "Native/Language.swift",
                "Native/NativeExample.swift",
                "Native/NativeFeature.swift",
                "Native/NativeFeatureParser.swift",
                "Native/NativeRunner.swift",
                "Native/NativeScenario.swift",
                "Native/NativeTestCase.swift",
                "Native/ParseState.swift",
                "Native/gherkin-languages.json",
                "Native/XCTest_Gherkin.h"
            ],
            sources: [
                "Core/UnusedStepsTracker.m",
                "Native/XCGNativeInitializer.m"
            ],
            publicHeadersPath: "include_objc",
            cSettings: [
                .headerSearchPath("Core"),
                .headerSearchPath("Native")
            ]
        ),
        .target(
            name: "XCTest_Gherkin",
            dependencies: [
                "XCTest_Gherkin_ObjC"
            ],
            path: "Pod",
            exclude: [
                "Core/UnusedStepsTracker.m",
                "Native/XCGNativeInitializer.m",
                "include_objc/UnusedStepsTracker.h",
                "include/objc/XCGNativeInitializer.h",
                "Native/XCTest_Gherkin.h"
            ],
            sources: [
                "Core/Background.swift",
                "Core/ClassHelperMethods.swift",
                "Core/Example.swift",
                "Core/LevenshteinDistance.swift",
                "Core/MatchedStringRepresentable.swift",
                "Core/PageObject.swift",
                "Core/Step.swift",
                "Core/StepDefiner.swift",
                "Core/StringGherkinExtension.swift",
                "Core/XCTestCase+Gherkin.swift",
                "Native/Language.swift",
                "Native/NativeExample.swift",
                "Native/NativeFeature.swift",
                "Native/NativeFeatureParser.swift",
                "Native/NativeRunner.swift",
                "Native/NativeScenario.swift",
                "Native/NativeTestCase.swift",
                "Native/ParseState.swift"
            ],
            resources: [
                .process("Native/gherkin-languages.json")
            ],            
            linkerSettings: [
                .linkedFramework("XCTest", .when(platforms: [.iOS]))
            ]
        )
    ]
)

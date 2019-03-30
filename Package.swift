// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Moya",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(name: "Moya", targets: ["Moya"]),
        .library(name: "ReactiveMoya", targets: ["ReactiveMoya"]),
        .library(name: "RxMoya", targets: ["RxMoya"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0-beta.4")),
        .package(url: "https://github.com/antitypical/Result.git", .upToNextMajor(from: "4.0.0")),
        .package(url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", .upToNextMajor(from: ("4.0.0"))),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "4.0.0"))
    ],
    targets: [
         .target(
            name: "Moya",
            dependencies: [
                "Alamofire",
                "Result"],
            exclude: [
                "Tests",
                "Sources/Supporting Files",
                "Examples"]),
        .target(
            name: "ReactiveMoya",
            dependencies: [
                "Moya",
                "ReactiveSwift"],
            exclude: [
                "Tests",
                "Sources/Supporting Files",
                "Examples"]),
        .target(
            name: "RxMoya",
            dependencies: [
                "Moya",
                "RxSwift"],
            exclude: [
                "Tests",
                "Sources/Supporting Files",
                "Examples"])
    ],
    swiftLanguageVersions: [.v4]
)

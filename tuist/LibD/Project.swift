import ProjectDescription

let project = Project(
    name: "LibD",
    targets: [
        .target(
            name: "LibD",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "com.stress.LibD",
            sources: ["srcs/**"],
            dependencies: [.project(target: "LibE", path: .relativeToRoot("LibE"))],
            settings: .settings(
                base: [:],
                configurations: [
                    .debug(name: "Debug", xcconfig: "../configs/LibD/LibD-Debug.xcconfig")
                ]
            )
        )
    ]
)

import ProjectDescription

let project = Project(
    name: "LibA",
    targets: [
        .target(
            name: "LibA",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "com.stress.LibA",
            sources: ["Sources/**"],
            dependencies: [.project(target: "LibE", path: .relativeToRoot("LibE"))],
            settings: .settings(
                base: [:],
                configurations: [
                    .debug(name: "Debug", xcconfig: "../configs/LibA/LibA-Debug.xcconfig")
                ]
            )
        )
    ]
)

import ProjectDescription

let project = Project(
    name: "LibB",
    targets: [
        .target(
            name: "LibB",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "com.stress.LibB",
            sources: ["Sources/**"],
            dependencies: [.project(target: "LibE", path: .relativeToRoot("LibE"))],
            settings: .settings(
                base: [:],
                configurations: [
                    .debug(name: "Debug", xcconfig: "../configs/LibB/LibB-Debug.xcconfig")
                ]
            )
        )
    ]
)

import ProjectDescription

let project = Project(
    name: "LibC",
    targets: [
        .target(
            name: "LibC",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "com.stress.LibC",
            sources: ["Sources/**"],
            dependencies: [.project(target: "LibE", path: .relativeToRoot("LibE"))],
            settings: .settings(
                base: [:],
                configurations: [
                    .debug(name: "Debug", xcconfig: "../configs/LibC/LibC-Debug.xcconfig")
                ]
            )
        )
    ]
)

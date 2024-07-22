import ProjectDescription

let project = Project(
    name: "LibE",
    targets: [
        .target(
            name: "LibE",
            destinations: .iOS,
            product: .staticLibrary,
            bundleId: "com.stress.LibE",
            sources: ["Sources/**"],
            settings: .settings(
                base: [:],
                configurations: [
                    .debug(name: "Debug", xcconfig: "../configs/LibE/LibE-Debug.xcconfig")
                ]
            )
        )
    ]
)

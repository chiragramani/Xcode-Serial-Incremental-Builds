import ProjectDescription

let project = Project(
    name: "Serial",
    targets: [
        .target(
            name: "Serial",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Serial",
            sources: ["Serial/Sources/**"],
            dependencies: [
                .project(target: "LibA", path: "LibA"),
                .project(target: "LibB", path: "LibB"),
                .project(target: "LibC", path: "LibC"),
                .project(target: "LibD", path: "LibD"),
                .project(target: "LibE", path: "LibE"),
            ]
        ),
    ]
)

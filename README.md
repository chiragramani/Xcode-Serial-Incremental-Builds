# Xcode Serial Incremental Builds Repro

### Scenario

1. In the reproducer, there are 5 libraries - LibA, LibB, LibC, LibD, LibE.
2. LibA, LibB, LibC, LibD → all depend on LibE.
3. This means if there are changes in LibE, it should trigger a recompilation of files in LibA, LibB, LibC, LibD targets.
4. Since LibA, LibB, LibC, LibD targets are disjoint from each other, they should compile in parallel.

### Findings

I see parallel builds with tuist but not with Xcodegen generated projects.

### Steps

#### tuist
1. `cd tuist && tuist generate`
2. Make sure `Serial-Workspace` scheme is selected.
3. Now make any public interface change in `LibE.swift`
4. Notice: LiBA, LibB, LibC, LibD are all built in parallel.
<img width="1132" alt="Screenshot 2024-07-22 at 1 35 02 PM" src="https://github.com/user-attachments/assets/94934575-54da-4e94-ac39-9613c4a16d7f">

#### Xcodegen
1. `cd xcodegen && ./generate.sh`
2. Make sure `MyApp` scheme is selected.
3. Now make any public interface change in `LibE.swift`
4. Notice: LiBA, LibB, LibC, LibD are all built serially.

<img width="1582" alt="Screenshot 2024-07-22 at 1 37 07 PM" src="https://github.com/user-attachments/assets/55f3c9e5-a8eb-4ce8-9fca-e28cd164060f">

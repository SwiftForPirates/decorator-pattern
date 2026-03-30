// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Decorator_Pattern {
    static func main() {
        let tracker = ShotTracker()
        let cannon = BellDecorator(
            decoratee: ShotCountingDecorator(
                decoratee: Cannon(),
                tracker: tracker
            ),
            highBell: HighBell(),
            lowBell: LowBell()
        )

        cannon.shoot("east")
        cannon.shoot("north")

        print("Fired shots: \(tracker.firedShots)")
    }
}

extension Cannon: Shootable {}

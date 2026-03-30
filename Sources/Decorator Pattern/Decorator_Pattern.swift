// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Decorator_Pattern {
    static func main() {
        let tracker = ShotTracker()
        let cannon = Cannon(tracker: tracker, highBell: HighBell(), lowBell: LowBell())

        cannon.shoot("east")

        print("Fired shots: \(tracker.firedShots)")
    }
}

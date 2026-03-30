// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct Decorator_Pattern {
    static func main() {
        let tracker = ShotTracker()
        let highBell = HighBell()
        let lowBell = LowBell()

        let cannon = Cannon()
            .trackingShots(with: tracker)
            .ringingBells(high: highBell, low: lowBell)

        cannon.shoot("east")
        cannon.shoot("north")

        print("Fired shots: \(tracker.firedShots)")
    }
}

extension Cannon: Shootable {}

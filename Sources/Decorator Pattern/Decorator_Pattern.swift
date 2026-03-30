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
            .ringingBells(high: highBell, low: lowBell)

        cannon.shoot("east")
        cannon.shoot("north")

        let pistol = Pistol().trackingShots(with: tracker)
        let musket = Musket().trackingShots(with: tracker)

        pistol.shoot("south")
        musket.shoot("west")

        print("Fired shots: \(tracker.firedShots)")
    }
}

extension Cannon: Shootable {}
extension Pistol: Shootable {}
extension Musket: Shootable {}

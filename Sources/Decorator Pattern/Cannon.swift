//
//  Cannon.swift
//  Decorator Pattern
//
//  Created by Lennart Wisbar on 30.03.26.
//

class Cannon {
    private let tracker: ShotTracker
    private let highBell: HighBell
    private let lowBell: LowBell

    init(tracker: ShotTracker, highBell: HighBell, lowBell: LowBell) {
        self.tracker = tracker
        self.highBell = highBell
        self.lowBell = lowBell
    }

    func shoot(_ direction: String) {
        highBell.ring()
        highBell.ring()
        print("Shooting cannon to the \(direction). Boom!")
        tracker.shotFired()
        lowBell.ring()
        lowBell.ring()
    }
}

//
//  Cannon.swift
//  Decorator Pattern
//
//  Created by Lennart Wisbar on 30.03.26.
//

class Cannon {
    private let tracker: ShotTracker

    init(tracker: ShotTracker) {
        self.tracker = tracker
    }

    func shoot(_ direction: String) {
        print("Shooting cannon to the \(direction). Boom!")
        tracker.shotFired()
    }
}

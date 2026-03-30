//
//  ShotCountingDecorator.swift
//  Decorator Pattern
//
//  Created by Lennart Wisbar on 30.03.26.
//

class ShotCountingDecorator: Shootable {
    private let decoratee: Shootable
    private let tracker: ShotTracker

    init(decoratee: Shootable, tracker: ShotTracker) {
        self.decoratee = decoratee
        self.tracker = tracker
    }

    func shoot(_ direction: String) {
        decoratee.shoot(direction)
        tracker.shotFired()
    }
}

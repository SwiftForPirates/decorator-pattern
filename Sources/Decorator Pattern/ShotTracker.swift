//
//  ShotTracker.swift
//  Decorator Pattern
//
//  Created by Lennart Wisbar on 30.03.26.
//

class ShotTracker {
    private(set) var firedShots = 0

    func shotFired() {
        firedShots += 1
    }
}

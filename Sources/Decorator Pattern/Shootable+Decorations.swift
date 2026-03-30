//
//  File.swift
//  Decorator Pattern
//
//  Created by Lennart Wisbar on 30.03.26.
//

extension Shootable {
    func trackingShots(with tracker: ShotTracker) -> Shootable {
        ShotCountingDecorator(decoratee: self, tracker: tracker)
    }

    func ringingBells(high: HighBell, low: LowBell) -> Shootable {
        BellDecorator(decoratee: self, highBell: high, lowBell: low)
    }
}

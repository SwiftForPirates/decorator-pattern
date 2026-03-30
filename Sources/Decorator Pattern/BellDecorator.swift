//
//  BellDecorator.swift
//  Decorator Pattern
//
//  Created by Lennart Wisbar on 30.03.26.
//

class BellDecorator: Shootable {
    private let decoratee: Shootable
    private let highBell: HighBell
    private let lowBell: LowBell

    init(decoratee: Shootable, highBell: HighBell, lowBell: LowBell) {
        self.decoratee = decoratee
        self.highBell = highBell
        self.lowBell = lowBell
    }

    func shoot(_ direction: String) {
        highBell.ring()
        decoratee.shoot(direction)
        lowBell.ring()
    }
}

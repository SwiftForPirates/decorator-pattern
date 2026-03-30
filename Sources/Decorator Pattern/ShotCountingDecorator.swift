//
//  ShotCountingDecorator.swift
//  Decorator Pattern
//
//  Created by Lennart Wisbar on 30.03.26.
//

class ShotCountingDecorator: Shootable {
    private let decoratee: Shootable

    init(decoratee: Shootable) {
        self.decoratee = decoratee
    }

    func shoot(_ direction: String) {
        decoratee.shoot(direction)
    }
}

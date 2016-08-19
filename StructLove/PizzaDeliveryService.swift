//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    let location: Coordinate
    var pizzasAvailable: Int

    init(location: Coordinate) {
        self.location = location
        self.pizzasAvailable = 10
    }

    func isInRange(destination: Coordinate) -> Bool {
        return location.distanceTo(destination) <= 5000.0
    }

    mutating func deliverPizzaTo(destination: Coordinate) -> Bool {
        guard pizzasAvailable > 0 else { return false }
        guard isInRange(destination) else { return false }
        pizzasAvailable -= 1
        return true
    }
}

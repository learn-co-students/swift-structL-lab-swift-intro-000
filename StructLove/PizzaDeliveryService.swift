//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    var location: Coordinate
    var pizzasAvailable: Int = 10
    
    init(location: Coordinate) {
        self.location = location
        pizzasAvailable = 10
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        return location.distance(to: destination) <= 5000.0
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        guard pizzasAvailable > 0 else { return false }
        guard isInRange(to: destination) else { return false }
        pizzasAvailable -= 1
        return true
    }
}

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
    var pizzasAvailable: Int = 10
    
    init(location: Coordinate) {
        self.location = location
    }
    
    func isInRange(destination: Coordinate) -> Bool {
        return destination.distance(to: location) < 5000.0
    }
    
    mutating func deliverPizza(destination: Coordinate) -> Bool {
        if pizzasAvailable > 1 && destination.distance(to: location) < 5000.0 {
            pizzasAvailable -= 1
            return true
        } else {
            return false
        }
    }
}

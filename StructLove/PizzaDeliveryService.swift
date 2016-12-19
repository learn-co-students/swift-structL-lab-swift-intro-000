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
   
    
    func isInRange(to destination: Coordinate) -> Bool {
        return destination.distance(to: location) <= 5000.0
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        if (isInRange(to: destination) && pizzasAvailable > 0) {
            pizzasAvailable = pizzasAvailable - 1
            return true
        } else {
            return false
        }
    }
}

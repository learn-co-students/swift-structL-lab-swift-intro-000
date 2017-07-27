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
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        if destination.distance(to: self.location) <= 5000 {
            return true
        } else {
            return false
        }
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        if self.isInRange(to: destination) && pizzasAvailable != 0 {
            pizzasAvailable -= 1
            return true
        } else {
            return false
        }
    }
}

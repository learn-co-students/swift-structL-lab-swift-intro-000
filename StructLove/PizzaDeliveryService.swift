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
    
    func isInRange(to: Coordinate) -> Bool {
        return location.distance(to: to) <= 5000.0
    }
    
    mutating func deliverPizza(to: Coordinate) -> Bool {
        if pizzasAvailable > 0 && isInRange(to: to) {
            pizzasAvailable -= 1
            return true
        }
        
        return false
    }
}

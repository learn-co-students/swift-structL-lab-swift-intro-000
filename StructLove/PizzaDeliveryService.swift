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
        if location.distance(to: destination) <= 5000 {
            return true
        }
        return false
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        if pizzasAvailable < 1 {
            return false
        }
        
        if isInRange(to: destination) {
            pizzasAvailable -= 1
            return true
        } else {
            return false
        }
    }
}

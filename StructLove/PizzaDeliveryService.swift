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

    mutating func isInRange(to destination: Coordinate) -> Bool {
        if location.distance(to: destination) < 5000 {
            return true
        } else {
            return false
        }
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        if pizzasAvailable > 0 {
            if isInRange(to: destination) == true {
                pizzasAvailable -= 1
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }
    
}











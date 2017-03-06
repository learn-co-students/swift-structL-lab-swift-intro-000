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
        if location.distance(to: destination) > 5000 {
            return false
        } else {
            return true
        }
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        if location.distance(to: destination) <= 5000 && pizzasAvailable > 1 {
            pizzasAvailable -= 1
            return true
        } else if pizzasAvailable == 0 {
            return false
        } else {
            return false
        }
    }
    
    
}

//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    
    var location:Coordinate
    var pizzasAvailable:Int = 10
    
    init(location:Coordinate) {
        self.location = location
    }
    
    mutating func isInRange(to destination:Coordinate) -> Bool {
        
        if self.location.distance(to: destination) < 5000 {
            return true
        }
        return false
    }
    
    mutating func deliverPizza(to destination:Coordinate) -> Bool {
        
        if self.location.distance(to: destination) < 5000 && pizzasAvailable != 0 {
            pizzasAvailable -= 1
            return true
        }
        return false
    }
    
}

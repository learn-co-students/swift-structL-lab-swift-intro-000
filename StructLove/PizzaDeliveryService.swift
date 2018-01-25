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
    
    func isInRange(destination: Coordinate) -> Bool {
        
        return self.location.distance(coordinate: destination) <= 5000.0
        
    }
    
    mutating func deliverPizza(destination: Coordinate) -> Bool {
        
        if self.isInRange(destination: destination) && self.pizzasAvailable > 0 {
            
            self.pizzasAvailable -= 1
            return true
            
        }
        
        return false
        
    }
}

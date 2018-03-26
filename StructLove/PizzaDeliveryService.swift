//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    
    // MARK: - property
    
    var location: Coordinate
    var pizzasAvailable: Int = 10
    
    
    // MARK: - init
    
    init(location: Coordinate) {
        
        self.location = location
    }
    
    
    // MARK: method
    
    func isInRange(to destination : Coordinate) -> Bool {
        return self.location.distance(to: destination) < 5000 ? true : false
    }
    
    mutating func deliverPizza(to destination : Coordinate) -> Bool {
        var available = isInRange(to: destination)
        if available && pizzasAvailable > 1 {
            pizzasAvailable -= 1
        } else {
            available = false
        }
        return available
    }
}

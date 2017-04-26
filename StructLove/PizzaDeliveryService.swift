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
    
    func isInRange(to destination: Coordinate) -> Bool {
        
        return location.distance(to: destination) < 5000
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        var destinationPass = isInRange(to: destination)
        if pizzasAvailable <= 0 {
            destinationPass = false
        } else {
            if destinationPass {
                pizzasAvailable -= 1
            }
        }
        return destinationPass
    }
    
    
}

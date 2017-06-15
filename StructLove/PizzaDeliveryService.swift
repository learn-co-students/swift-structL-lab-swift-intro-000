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
        pizzasAvailable = 10
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        return 5000 >= location.distance(to: destination)
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        if isInRange(to: destination) && pizzasAvailable != 0 {
            pizzasAvailable -= 1
            return true
        } else {
            return false
        }
    }
    
    
    
}



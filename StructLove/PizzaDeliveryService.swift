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
    var pizzaAvailable: Int
    
    init(location: Coordinate) {
        self.location = location
        pizzaAvailable = 10
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        return destination.distance(to: self.location) <= 5000
    }
    
    mutating func deliverPizza(to destination: Coordinate)-> Bool{
        if self.isInRange(to: destination) && pizzaAvailable > 0 {
            pizzaAvailable -= 1
            return true
        } else {
            return false
        }
    }
}

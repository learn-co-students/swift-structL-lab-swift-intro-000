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
    var pizzasAvailable: Int
    
    init(location: Coordinate) {
        self.location = location
        self.pizzasAvailable = 10
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        return location.distance(to: destination) <= 5000
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        if pizzasAvailable == 0 {
            return false
        } else if isInRange(to: destination) {
            pizzasAvailable -= 1
            return true
        } else {
            return false
        }
    }
}

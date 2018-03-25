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
        if destination.distance(to: location) <= 5000.00 {
            return true
        }
        else {
            return false
        }
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        switch pizzasAvailable {
        case 0:
            return false
        default:
            switch isInRange(to: destination) {
            case true:
                pizzasAvailable -= 1
                return true
            case false:
                return false
            }
        }
    }
    
        
}

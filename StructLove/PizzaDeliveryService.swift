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
    var pizzasAvailable: Int = 0
    
    init(location: Coordinate) {
        self.location = location
    }
    
    func isInRange(destination: Coordinate) -> Bool {
        guard location.distance(coordinate: destination) < 5000 else {return false}
        return true
    }
    
    mutating func deliverPizza(destination: Coordinate) -> Bool {
    guard isInRange(destination: destination) else { return false }
    pizzasAvailable -= 1
    return true
    }
    
}


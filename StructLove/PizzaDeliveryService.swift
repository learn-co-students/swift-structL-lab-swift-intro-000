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
       // self.pizzasAvailable = pizzasAvailable
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        return self.location.distance(to: destination) < 5000.0
    }
    
    mutating func deliverPizza(to destination:Coordinate) -> Bool {
        guard pizzasAvailable > 0  else { return false }
        
        if isInRange(to: destination) {
        pizzasAvailable -= 1
        return isInRange(to: destination)
    }
        return false
    }
}

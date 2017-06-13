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
        pizzasAvailable = 10
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        var answer = false
        if location.distance(to: destination) <= 5000 {
            answer = true
        }
        return answer
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        var answer = false
        if isInRange(to: destination) == true && pizzasAvailable > 0 {
            pizzasAvailable -= 1
            answer = true
        }
        return answer
    }
}

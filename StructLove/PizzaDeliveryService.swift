//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    // the solution differs in that xcode throws error until I turn it into a var and put the parameters with values, even though it's a struct. Swift 3 related?
    var location = Coordinate(latitude: 0, longitude:0)
    var pizzasAvailable: Int = 0
    
    init(location: Coordinate) {
        self.location = location
        self.pizzasAvailable = 10
    }
    
    mutating func isInRange(to destination: Coordinate) -> Bool {
        return location.distance(to: destination) < 5000
    }
    // mutating func because it's changing the values set by the init.
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        if isInRange(to: destination) {
            pizzasAvailable -= 1
            return true
        } else if pizzasAvailable <= 0 {
            return false
        } else {
            return false
        }
    }
    
    /*
     // this is the concise way to do above. guards prevents pyramid of doom
     guard pizzasAvailable > 0 else { return false }
     guard isInRange(destination) else { return false }
     pizzasAvailable -= 1
     return true
     */
    
}

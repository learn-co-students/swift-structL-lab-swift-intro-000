//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    var location : Coordinate;
    var pizzasAvailable : Int;
    
    init(location : Coordinate) {
        self.location = location;
        self.pizzasAvailable = 10;
    }
    
    func isInRange(to: Coordinate) -> Bool {
        return self.location.distance(to: to) < 5000
    }
    
    mutating func deliverPizza(to: Coordinate) -> Bool {
        if (self.isInRange(to: to) && self.pizzasAvailable > 0) {
            self.pizzasAvailable -= 1;
            return true;
        }
        
        return false;
    }
}

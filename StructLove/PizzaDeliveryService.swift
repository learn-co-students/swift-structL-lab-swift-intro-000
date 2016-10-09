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
    var pizzasAvailable = 10
    
    init(location: Coordinate) {
        self.location = location
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        return self.location.distance(to: destination) < 5000
    }
}

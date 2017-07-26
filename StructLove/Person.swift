//
//  Person.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Person {
    var firstName: String
    var lastName: String
    var home: Coordinate
    var isHungry: Bool
    
    init(firstName: String, lastName: String, home: Coordinate) {
        isHungry = true
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
    }
    
    mutating func eatPizza(from service: PizzaDeliveryService) -> Bool {
        if service.isInRange(to: home) && isHungry {
            isHungry = false;
            return true
        }
        return false
    }
}

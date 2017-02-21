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
    var isHungry: Bool = true
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
        isHungry = true
    }
    
    mutating func eatPizza(from service: PizzaDeliveryService) -> Bool {
        guard isHungry else { return false }
        guard service.isInRange(to: home) else { return false }
        isHungry = false
        return true
    }
}

//
//  Person.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let home: Coordinate
    var isHungry: Bool
    var serviceTest: PizzaDeliveryService
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
    }

    mutating func eatPizza(from service: PizzaDeliveryService) -> Bool {
        if isHungry && service.isInRange(to: home) {
            isHungry = false
            return true
        } else if !isHungry && !service.isInRange(to: home) {
            return false
        }
    }
    
    /*
     mutating func eatPizza(from service: PizzaDeliveryService) -> Bool {
     guard isHungry else { return false }
     guard service.isInRange(home) else { return false }
     isHungry = false
     return true
     }
    */
    
}

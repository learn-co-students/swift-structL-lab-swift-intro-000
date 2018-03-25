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
    var isHungry: Bool = true
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
    }
    
    mutating func eatPizza(from service: PizzaDeliveryService) -> Bool {
        switch self.isHungry && service.isInRange(to: home) {
        case true:
            self.isHungry = false
            return true
        case false:
            return false
        }
//        if self.isHungry && service.isInRange(destination: home) {
//            isHungry = false
//            return true
//        }
//        else if !self.isHungry || !service.isInRange(destination: home) {
//            return false
//        }
    }
}



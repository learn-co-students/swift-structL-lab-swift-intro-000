//
//  Person.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Person {
    let firstName:String
    let lastName: String
    let home: Coordinate
    var isHungy: Bool
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName   = lastName
        self.home = home
        isHungy = true
    }
    
    mutating func eatPizza(from service: PizzaDeliveryService) -> Bool {
        if isHungy && service.isInRange(to: home) {
            isHungy = false
            return true
        }
        else {
            return false
        }
    }
}

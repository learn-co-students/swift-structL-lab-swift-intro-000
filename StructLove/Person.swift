//
//  Person.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Person {
    
    // MARK: - property
    
    var firstName: String
    var lastName: String
    var home: Coordinate
    var isHungry: Bool = true
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
    }
    
    
    // MARK: - method
    
    mutating func eatPizza(from service : PizzaDeliveryService) -> Bool {
        var returnValue = false
        if isHungry == true && service.isInRange(to: home) {
            isHungry = false
            returnValue = true
        } else {
            returnValue = false
        }
        return returnValue
    }
}

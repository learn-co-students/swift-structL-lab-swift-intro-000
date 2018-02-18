//
//  Person.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

/*
 In Person.swift, declare a new struct called Person.
 Add four properties to your Person struct:
 A String called firstName
 A String called lastName
 A Coordinate called home
 A Bool called isHungry
 Create an initializer that takes three parameters: a String called firstName, a String called lastName, and a Coordinate called home. These parameters should be assigned to the appropriate properties. isHungry should initially be set to true.
 Create a method called eatPizza(from:). This method takes one parameter, a PizzaDeliveryService called service that represents where the pizza is being ordered from. If the person is hungry and the service is in range of the person's home, then the isHungry property should be set to false and the method should return true. If the person is not hungry or the service is not in range of the person's home, the method should simply return false.*/

struct Person {
    var firstName: String
    var lastName: String
    var home: Coordinate
    var isHungry = true
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
    }
    
    mutating func eatPizza(from service: PizzaDeliveryService) ->Bool {
        if (service.isInRange(to: home) && self.isHungry) {
            self.isHungry = false
            return true
        }else{
            return false
        }
    }
}

//
//  Person.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

//Add four properties to your Person struct:
//A String called firstName
//A String called lastName
//A Coordinate called home
//A Bool called isHungry

struct Person {
  let firstName: String
  let lastName: String
  let home: Coordinate
  var isHungry: Bool = true
  
  // Create an initializer that takes three parameters: a String called firstName, a String called lastName, and a Coordinate called home. These parameters should be assigned to the appropriate properties. isHungry should initially be set to true.
  
  init(firstName: String, lastName: String, home: Coordinate) {
    self.firstName = firstName
    self.lastName = lastName
    self.home = home
  }
  
  // Create a method called eatPizza(from:). This method takes one parameter, a PizzaDeliveryService called service that represents where the pizza is being ordered from. If the person is hungry and the service is in range of the person's home, then the isHungry property should be set to false and the method should return true. If the person is not hungry or the service is not in range of the person's home, the method should simply return false.
  
  mutating func eatPizza(from service: PizzaDeliveryService) -> Bool {
    if isHungry && service.isInRange(to: home) {
      isHungry = false
      return true
    }
    return false
  }
}

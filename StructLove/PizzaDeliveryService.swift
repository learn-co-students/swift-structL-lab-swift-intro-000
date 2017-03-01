//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

//In PizzaDeliveryService.swift, declare a struct called PizzaDeliveryService.
//Your PizzaDeliveryService struct should have two properties:
//A Coordinate called location that represents where the pizza delivery service is located.
//An Int called pizzasAvailable. This should be a variable. It represents the service's inventory.
//Create an initializer that takes one parameter, a Coordinate called location, and assigns it to the location property. It should also make sure the pizzasAvailable property is initially set to 10.
//Create a method called isInRange(to:). This method takes one parameter, a Coordinate called destination, and returns true if the destination is no more than 5000 kilometers from the pizza delivery service.
//Create a method called deliverPizza(to:). This method takes one parameter, a Coordinate called destination. If the destination is in range of the pizza delivery service, it subtracts one from the number of pizzas available and returns true. Otherwise, it simply returns false. If there are no pizzas available, it also returns false.

struct PizzaDeliveryService {
    var location: Coordinate
    var pizzasAvailable: Int
    
    init(location: Coordinate) {
        self.location = location
        self.pizzasAvailable = 10
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        return location.distance(to: destination) <= 5000
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        guard pizzasAvailable > 0 else {return false}
        
        if self.isInRange(to: destination) {
            pizzasAvailable -= 1
            return true
        }
        return false
    }
}

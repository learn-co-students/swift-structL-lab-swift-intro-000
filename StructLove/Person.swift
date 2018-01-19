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
    init(firstName:String,lastName: String,home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
//        self.isHungry = true
    }
    mutating func eatPizza(from service:PizzaDeliveryService) -> Bool{
        if self.isHungry && service.isInRange(to: home){
            isHungry = false
            return true
        }else{
            return false
        }
    }
}

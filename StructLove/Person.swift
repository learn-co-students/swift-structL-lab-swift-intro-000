//
//  Person.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Person {

    var firstname: String
    var lastname: String
    var home: Coordinate
    var isHungry: Bool = true

    init(firstname:String, lastname: String, home: Coordinate) {

      self.firstname = firstname
      self.lastname = lastname
      self.home = home
   
        

}


    mutating func eatPizza(from service: PizzaDeliveryService) -> Bool {

        if isHungry  == true && service.isInRange(to: home) == true {
            
            isHungry = false
            
            return true
            
        }
    


    else {

return false

}

}
}

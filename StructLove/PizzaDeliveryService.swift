//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    var location:Coordinate
    var  pizzasAvailable:Int
    
    init(location:Coordinate){
        self.location = location
        self.pizzasAvailable  = 10
    }
    
    func isInRange(to distination:Coordinate)->Bool{
        let calDistance = location.distance(to: distination) //distination.distance (to: location)
    
    return (calDistance < 5000)
    }

    mutating func deliverPizza(to distination:Coordinate)->Bool{
        
        if isInRange(to: distination) && pizzasAvailable > 0 {
            pizzasAvailable -= 1
            return true
        } else {
            return false
        }
    }
}

//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


struct PizzaDeliveryService{

    var location:Coordinate
    var pizzasAvailable:Int
    
    
    init(location:Coordinate) {
        self.location = location
        self.pizzasAvailable = 10
        
    }
    
    
    func isInRange(to destination:Coordinate)->Bool{
    
     return self.location.distance(to: destination) < 5000.00
    
    }

    
    mutating func deliverPizza(to destination:Coordinate)->Bool{
    
        if isInRange(to: destination) {
            if self.pizzasAvailable > 1 {
                
                self.pizzasAvailable = self.pizzasAvailable - 1
                return true
                
            }else {
                return false
            }
            
        }else {
            return false
        }
    
    }
    
    
}

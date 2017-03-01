//
//  Tiger.swift
//  StructLove
//
//  Created by James Campagno on 8/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

//In the Tiger.swift file, define a struct called Tiger.
//Add two properties to your Tiger struct:
//A String property called name
//A Bool property called isHungry
//Create an initializer for this struct. This struct should take one parameter of type String called name, and assign that parameter to the appropriate property. isHungry should be true by default. See the note below.
//Implement a method called eat(). This method takes no parameters. It should change isHungry to false. (Remember how to write a struct method that changes a property?)

struct Tiger {
    var name: String
    var isHungry: Bool
    
    init(name: String) {
        self.name = name
        self.isHungry = true
    }
        mutating func eat() {
            isHungry = false
    }
}


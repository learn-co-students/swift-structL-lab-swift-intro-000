//
//  Tiger.swift
//  StructLove
//
//  Created by James Campagno on 8/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

//Let's start off easy: By implementing a simple struct called Tiger. The Tiger you implement in this lab is pretty basic: It has a name, and it is either hungry or not hungry, just like tigers in the real world.
//In the Tiger.swift file, define a struct called Tiger.
//Add two properties to your Tiger struct:
//A String property called name
//A Bool property called isHungry
//Create an initializer for this struct. This struct should take one parameter of type String called name, and assign that parameter to the appropriate property. isHungry should be true by default. See the note below.
//Implement a method called eat(). This method takes no parameters. It should change isHungry to false. (Remember how to write a struct method that changes a property?)
//NOTE: It's best when you're assigning a default value to a stored property, to do it at the declaration of the property, not within the initializer. It's clear to anyone reading your code (including yourself) that when you look through the various properties of a class or struct, which ones have default values as opposed to having to go to the initalizer to see if the init function is providing a default value to certain stored properties.

struct Tiger {
    var name: String
    var isHungry: Bool = true
    init(name: String) {
        self.name = name
    }
    mutating func eat() {
        isHungry = false
    }
}

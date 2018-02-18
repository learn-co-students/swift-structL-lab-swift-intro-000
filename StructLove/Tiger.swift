//
//  Tiger.swift
//  StructLove
//
//  Created by James Campagno on 8/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Tiger {// struct called Tiger
    var name: String
    var isHungry = true //define default values of a struct in the declaration,
    //as to make it easier to see which ones are default
    
    init(name: String) {
        self.name = name
    }
    //method eat(), writing a struct method that changes a property
    mutating func eat() {
        self.isHungry = false
    }
}


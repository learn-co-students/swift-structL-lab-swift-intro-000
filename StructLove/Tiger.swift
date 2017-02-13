//
//  Tiger.swift
//  StructLove
//
//  Created by James Campagno on 8/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Tiger{
    var name: String
    var isHungry: Bool = true
    
    init(name:String){
        self.name = name
        //self.isHungry = true
    }
    
    mutating func eat(){
        self.isHungry = false
    }
}

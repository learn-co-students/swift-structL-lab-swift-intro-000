//
//  Tiger.swift
//  StructLove
//
//  Created by James Campagno on 8/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Tiger {
    let name: String
    var hungry = true
    
    init(name: String) {
        self.name = name
        hungry = true
    }
    
    mutating func eat() {
        hungry = false
    }
    
}

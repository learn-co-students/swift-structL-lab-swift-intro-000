//
//  Tiger.swift
//  StructLove
//
//  Created by James Campagno on 8/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Tiger {
    var name: String
    var hungry: Bool
    
    init(name: String) {
        self.name = name
        self.hungry = true
    }
    
    mutating func eat() {
        self.hungry = false
    }
}

//
//  Coordinate.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation






// Any double type has now the radians computed property available to it thanks to this extension.

// For Example 
// let number = 5.0
// number.radians

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}

struct Coordinate {
    let latitude: Double
    let longitude: Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    var isInNorthernHemisphere: Bool {
        guard latitude > 0 else {return false}
        return true
    }
    var isInSouthernHemisphere: Bool {
        guard latitude < 0 else {return false}
        return true
    }
    var isInWesternHemisphere: Bool {
        guard longitude > 0 else {return false}
        return true
    }
    var isInEasternHemisphere: Bool {
        guard longitude < 0 else {return false}
        return true
    }
    
    func distance(coordinate: Coordinate) -> Double {
        let distance = acos(sin(self.latitude.radians) * sin(coordinate.latitude.radians) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.longitude-coordinate.longitude.radians)) * 6371000 / 1000
        return distance
    }
    
}


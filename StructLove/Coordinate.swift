//
//  Coordinate.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}

struct Coordinate {
    var latitude: Double
    var longitude: Double
    var isInNorthernHemisphere: Bool {
        return latitude > 0.0
    }
    
    var isInSouthernHemisphere: Bool {
        return latitude < 0.0
    }
    
    var isInWesternHemisphere: Bool {
        return longitude > 0.0
    }
    
    var isInEasternHemisphere: Bool {
        return longitude < 0.0
    }
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    mutating func distance(to coordinate: Coordinate) -> Double {
        let r = 6371000.0
        let lat1 = latitude.radians
        let lat2 = coordinate.latitude.radians
        let resultOfLongMinus = (longitude - coordinate.longitude).radians
        return acos(sin(lat1) * sin(lat2) + cos(lat2) * cos(resultOfLongMinus) * r / 1000)
    }
}

// Any double type has now the radians computed property available to it thanks to this extension.

// For Example 
// let number = 5.0
// number.radians

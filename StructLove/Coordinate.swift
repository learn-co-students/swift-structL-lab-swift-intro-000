//
//  Coordinate.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import CoreLocation

struct Coordinate {
    var latitude: Double
    var longitude: Double
    
    var isInNorthernHemisphere: Bool {
        return latitude >= 0.0
    }
    var isInSouthernHemisphere: Bool {
        return !isInNorthernHemisphere
    }
    var isInWesternHemisphere: Bool {
        return longitude >= 0.0
    }
    var isInEasternHemisphere: Bool {
        return !isInWesternHemisphere
    }
    
    func distance(to coordinate: Coordinate) -> Double {
        let R = 6371e3
        let φ1 = latitude.radians
        let φ2 = coordinate.latitude.radians
        let Δλ = (longitude - coordinate.longitude).radians
        return acos(sin(φ1) * sin(φ2) + cos(φ1) * cos(φ2) * cos(Δλ)) * R / 1000
    }
}

// Any double type has now the radians computed property available to it thanks to this extension.

// For Example 
// let number = 5.0
// number.radians

extension Double {
    var radians: Double {
        return self * Double.pi / 180
    }
}

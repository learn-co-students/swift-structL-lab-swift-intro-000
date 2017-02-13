//
//  Coordinate.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


struct Coordinate {
    var latitude : Double
    var longitude : Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }

    
    var isInNorthernHemisphere : Bool {
        return latitude >= 0.0
    }
    var isInSouthernHemisphere : Bool {
        return latitude <= 0.0
    }
    var isInWesternHemisphere : Bool {
        return longitude >= 0.0
    }
    var isInEasternHemisphere : Bool {
        return longitude <= 0.0
    }
    
    func distance(coordinate: Coordinate) -> Double {
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
        return self * M_PI / 180
    }
}

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
    
    var isInNorthernHemisphere : Bool {
        return latitude >= 0.0
    }
    var isInSouthernHemisphere : Bool {
        return !isInNorthernHemisphere
    }
    var isInWesternHemisphere : Bool {
        return longitude >= 0.0
    }
    var isInEasternHemisphere : Bool {
        return !isInWesternHemisphere
    }
    
    
        
    func distanceTo(coordinate: Coordinate) -> Double {
        let R = 6371e3
        let lat1 = latitude.radians
        let lat2 = coordinate.latitude.radians
        let long = (longitude - coordinate.longitude).radians
        return acos(sin(lat1) * sin(lat2) + cos(lat1) * cos(lat2) * cos(long)) * R / 1000
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

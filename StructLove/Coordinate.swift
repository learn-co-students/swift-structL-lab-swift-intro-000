//
//  Coordinate.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Coordinate {
    var latitude: Double
    var longitude: Double
    
    var isInNorthernHemisphere: Bool {
        
        if latitude > 0 {
            return true
        }
        return false
    }
    
    var isInSouthernHemisphere: Bool {
        if latitude < 0 {
            return true
        }
        return false
    }
    
    
    var isInWesternHemisphere : Bool {
        if longitude > 0 {
            return true
        }
        return false
    }
    
    var isInEasternHemisphere: Bool {
        if longitude < 0 {
            return true
        }
        return false
    }

    init (latitude: Double, longitude: Double) {
        
        self.latitude = latitude
        self.longitude = longitude
    }

    func distance(to coordinate: Coordinate) -> Double {
        
        let la1 = self.latitude.radians
        let lo1 = self.longitude.radians
        let la2 = coordinate.latitude.radians
        let lo2 = coordinate.longitude.radians
        
        return acos(sin(la1)*sin(la2) + cos(la1)*cos(la2)*cos((lo1 - lo2)))*6371000/1000
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

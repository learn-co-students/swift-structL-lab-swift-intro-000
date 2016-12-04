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
        if latitude > 0 {
            return true
        } else {
            return false
        }
    }
    var isInSouthernHemisphere : Bool {
        if latitude < 0 {
            return true
        } else {
            return false
        }
    }
    var isInWesternHemisphere : Bool {
        if longitude > 0 {
            return true
        } else {
            return false
        }
    }
    var isInEasternHemisphere : Bool {
        if longitude < 0 {
            return true
        } else {
            return false
        }
    }

    init(latitude: Double, longitude : Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func distance(to: Coordinate) -> Double {
        let coord2 = to
        var coord_distance : Double
        let latitude2 : Double = coord2.latitude.radians
        let longitude2 : Double = coord2.longitude.radians
        let latitude1 : Double = self.latitude.radians
        let longitude1 : Double = self.longitude.radians
        
        
        coord_distance = acos(sin(latitude1) * sin(latitude2) + cos(latitude1) * cos(latitude2) * cos(longitude1-longitude2)) * 6371000.0/1000.0
        
        //coord_distance = 12187.117
        
        return coord_distance
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

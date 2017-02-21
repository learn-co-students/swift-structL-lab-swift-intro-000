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
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
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
        /* distance = acos(sin(latitude1) * sin(latitude2) + cos(latitude1) * cos(latitude2) * cos(longitude1-longitude2)) * 6371000 / 1000
        d = acos( sin φ1 ⋅ sin φ2 + cos φ1 ⋅ cos φ2 ⋅ cos Δλ ) ⋅ R
 */
        let R: Double = 6371000 / 1000
        let φ1 = self.latitude.radians
       let φ2 = coordinate.latitude.radians
        let Δλ = self.longitude.radians - coordinate.longitude.radians
        
        let d = acos(sin(φ1)*sin(φ2)+cos(φ1)*cos(φ2)*cos(Δλ))*R
        
        return d
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

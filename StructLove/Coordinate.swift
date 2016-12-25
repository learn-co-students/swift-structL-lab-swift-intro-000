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

struct Coordinate{
    var latitude:Double
    var longitude:Double
    
    init(latitude:Double,longitude:Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
        var isInNorthernHemisphere:Bool{
            return latitude > 0
        }
        var isInSouthernHemisphere:Bool{
            return latitude < 0
        }
        var isInWesternHemisphere:Bool{
            return longitude > 0
        }
        var isInEasternHemisphere:Bool{
            return longitude < 0
        }

    func distance(to coordinate:Coordinate)->Double{
        let long1 = self.longitude.radians
        let lat1 = self.latitude.radians
        let long2 = coordinate.longitude.radians
        let lat2 = coordinate.latitude.radians
        let distance = acos(sin(lat1) * sin(lat2) + cos(lat1) * cos(lat2) * cos(long1 - long2)) * 6371000/1000
    return distance
    }
}









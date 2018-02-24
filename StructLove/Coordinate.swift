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
        return self * .pi / 180
    }
}

struct Coordinate {
    var latitude: Double
    var longitude: Double
    var isInNorthernHemisphere: Bool {
        return latitude > 0
    }
    var isInSouthernHemisphere: Bool {
        return latitude < 0
    }
    var isInWesternHemisphere: Bool {
        return longitude > 0
    }
    var isInEasternHemisphere: Bool {
        return longitude < 0
    }
    
    func distance(to coordinate: Coordinate) -> Double {
        let lat1 = self.latitude
        let lat2 = coordinate.latitude
        let long1 = self.longitude
        let long2 = coordinate.longitude
        var result = sin(lat1) * sin(lat2) + cos(lat1) * cos(lat2) * cos(long1 - long2) * 6371000 / 1000
        return sqrt(pow(lat1-lat2, 2)+pow(long1-long2, 2))
    }
}

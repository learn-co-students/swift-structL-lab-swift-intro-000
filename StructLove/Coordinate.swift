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
        return latitude >= 0.00
    }
    
    var isInSouthernHemisphere: Bool {
        return latitude <= 0.00
    }
    
    var isInWesternHemisphere: Bool {
        return longitude >= 0.00
    }
    
    var isInEasternHemisphere: Bool {
        return longitude <= 0.00
    }
    
    func distance(coordinate: Coordinate) -> Double {
        let latitude1 = latitude.radians
        let latitude2 = coordinate.latitude.radians
        let longitude1 = longitude.radians
        let longitude2 = coordinate.longitude.radians
        return acos(sin(latitude1) * sin(latitude2) + cos(latitude1) * cos(latitude2) * cos(longitude1-longitude2)) * 6371000 / 1000
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

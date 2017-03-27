//
//  Coordinate.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Coordinate {
    var latitude, longitude: Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
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
    
    func distance(to: Coordinate) -> Double {
        return acos(sin(self.latitude.radians)
                    * sin(to.latitude.radians)
                    + cos(self.latitude.radians)
                    * cos(to.latitude.radians)
                    * cos(self.longitude.radians
                          - to.longitude.radians
                         )
                   )
               * 6371000 / 1000
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

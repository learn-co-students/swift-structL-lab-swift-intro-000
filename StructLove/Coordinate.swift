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
        } else {
            return false
        }
    }
    
    var isInSouthernHemisphere: Bool {
        if latitude < 0 {
            return true
        } else {
            return false
        }
    }
    
    var isInWesternHemisphere: Bool {
        if longitude > 0 {
            return true
        } else {
            return false
        }
    }
    
    var isInEasternHemisphere: Bool {
        if latitude < 0 {
            return true
        } else {
            return false
        }
    }
   
    
    init(latitude: Double, longitude: Double){
        self.latitude = latitude
        self.longitude = longitude
        
    }
    
    func distance(to coordinate: Coordinate) -> Double {
        return acos(sin(self.latitude.radians)*sin(coordinate.latitude.radians)+acos(self.latitude.radians)*acos(coordinate.latitude.radians)*acos(self.longitude.radians-coordinate.longitude.radians))*6371000/1000
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

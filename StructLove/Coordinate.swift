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
        return self * Double.pi / 180
    }
}

struct Coordinate {
    var latitude : Double;
    var longitude : Double;
    var isInNorthernHemisphere : Bool {
        if(latitude > 0) {
            return true;
        } else {
            return false;
        }
    }
    var isInSouthernHemisphere : Bool {
        if(latitude < 0) {
            return true;
        } else {
            return false;
        }
    }
    var isInEasternHemisphere : Bool {
        if(longitude < 0) {
            return true;
        } else {
            return false;
        }
    }
    var isInWesternHemisphere : Bool {
        if(longitude > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    init(latitude : Double, longitude : Double) {
        self.latitude = latitude;
        self.longitude = longitude;
    }
    
    func distance(to coordinate : Coordinate) -> Int {
        return Int(acos(sin(self.latitude.radians) * sin(coordinate.latitude.radians) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.longitude.radians-coordinate.longitude.radians)) * 6371000 / 1000);
    }
    
}


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
    
    //initializers
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
     //computed properties
    var isInNorthernHemisphere: Bool {
        get {
            return self.latitude >= 0
        }
    }
    //isInSouthern may be written get->return self.isInNorthernHemisphere == false?
    
    var isInSouthernHemisphere: Bool {
        get {
            return self.latitude < 0
        }
    }
    var isInWesternHemisphere: Bool {
        get {
            return self.longitude >= 0
        }
    }
    var isInEasternHemisphere: Bool {
        get {
            return self.longitude < 0
        }
    }
    
    func distance(to coordinate:Coordinate) -> Double {
        let latitude1 = latitude.radians
        let longitude1 = longitude.radians
        let latitude2 = coordinate.latitude.radians
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
        return self * Double.pi / 180
    }
}

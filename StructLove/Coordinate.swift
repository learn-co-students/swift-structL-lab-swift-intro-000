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
    var latitude: Double;
    var longitude: Double;
    
    var isInNorthernHemisphere: Bool {
        return latitude > 0;
    }
    
    var isInSouthernHemisphere: Bool {
        return latitude < 0;
    }
    
    var isInWesternHemisphere: Bool {
        return longitude > 0;
    }
    
    var isInEasternHemisphere: Bool {
        return longitude < 0;
    }
    
    init (latitude: Double, longitude: Double) {
        self.latitude = latitude;
        self.longitude = longitude;
    }
    
    func distance(to coordinate: Coordinate) -> Double {
        let latRad1 = self.latitude.radians;
        let longRad1 = self.longitude.radians;
        
        let latRad2 = coordinate.latitude.radians;
        let longRad2 = coordinate.longitude.radians;
        
        let argument = (sin(latRad1) * sin(latRad2)) + (cos(latRad1) * cos(latRad2) * cos(longRad1 - longRad2));
        
        return acos(argument) * Double(6371000 / 1000);
    }
    
    
}

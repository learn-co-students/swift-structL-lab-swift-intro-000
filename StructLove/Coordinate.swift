//
//  Coordinate.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension Double {
    var radians: Double {
        return self * Double.pi / 180
    }
}

struct Coordinate {
    let latitude: Double
    let longitude: Double
    
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
    
    func distanceTo(coordinate: Coordinate) -> Double {
        let R = 6371e3
        let latitude1 = latitude.radians
        let latitude2 = coordinate.latitude.radians
        let Δλ = (longitude - coordinate.longitude).radians
        return acos(sin(latitude1) * sin(latitude2) + cos(latitude1) * cos(latitude2) * cos(Δλ)) * R / 1000
    }
}

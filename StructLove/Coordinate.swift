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
        return self * M_PI / 180
    }
}

struct Coordinate {
    let latitude: Double
    let longitude: Double
    
    var isNorthernHemisphere: Bool {
        return latitude >= 0.0
    }
    
    var isSoutherHemisphere: Bool {
        return latitude <= 0.0
    }
    
    var isWesternHemisphere: Bool {
        return longitude >= 0.0
    }
    
    var isEasterHemisphere: Bool {
        return longitude <= 0.0
    }

    func distanceTo(coordinate: Coordinate) -> Double {
        let R = 6371e3
        let φ1 = latitude.radians
        let φ2 = coordinate.latitude.radians
        let Δλ = (longitude - coordinate.longitude).radians
        return acos(sin(φ1) * sin(φ2) + cos(φ1) * cos(φ2) * cos(Δλ)) * R / 1000
    }
}



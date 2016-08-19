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
    let longtitude: Double
    var isInNorthernHemisphere: Bool {
        return latitude >= 0.0
    }
    var isInSouthernHemisphere: Bool {
        return !isInNorthernHemisphere
    }
    var isInWesternHemisphere: Bool {
        return longtitude >= 0.0
    }
    var isInEasternHemisphere: Bool {
        return !isInWesternHemisphere
    }

    func distanceTo(coordinate: Coordinate) -> Double {
        let R = 6371e3
        let φ1 = latitude.radians
        let φ2 = coordinate.latitude.radians
        let Δλ = (latitude - coordinate.latitude).radians
        return acos(sin(φ1) * sin(φ2) + cos(φ1) * cos(φ2) * cos(Δλ)) * R / 1000
    }
}

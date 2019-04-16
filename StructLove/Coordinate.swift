//
//  Coordinate.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Coordinate
{
    var longitude: Double
    var latitude: Double
    var isInNorthernHemisphere: Bool
    {
        if latitude > 0
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    var isInSouthernHemisphere: Bool
    {
        if latitude < 0
        {
            return true
        }
        else
        {
            return false
            
        }
    }
    
    var isInWesternHemisphere: Bool
    {
        if longitude > 0
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    var isInEasternHemisphere: Bool
    {
        if longitude < 0
        {
            return true
        }
        else
        {
            return false
        }
        
    }
    
    
    init (longitude: Double, latitude: Double)
    {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    
    func distance ( to coordinate: Coordinate) -> Double
    {
        let latitude1 = self.latitude.radians
        let latitude2 = coordinate.latitude.radians
        
        let longitude1 = self.longitude.radians
        let longitude2 = coordinate.longitude.radians
        
        let dist = acos(sin(latitude1) * sin(latitude2) + cos(latitude1) * cos(latitude2) * cos(longitude1-longitude2)) * 6371000 / 1000
        
        return dist
        
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

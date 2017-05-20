//
//  CoordinateTest.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Quick
import Nimble
@testable import StructLove

class CoordinateSpec: QuickSpec {
    override func spec() {
        let coord1 = Coordinate(latitude: 51.0, longitude: 5.0)
        let coord2 = Coordinate(latitude: -58.0, longitude: -9.0)

        describe("isInNorthernHemisphere") {
            it("returns true if the coordinate is in the northern hemisphere") {
                expect(coord1.isInNorthernHemisphere).to(beTrue())
                expect(coord2.isInNorthernHemisphere).to(beFalse())
            }
        }

        describe("isInSoutherHemisphere") {
            it("returns true if the coordinate is in the sourther hemisphere") {
                expect(coord1.isInSouthernHemisphere).to(beFalse())
                expect(coord2.isInSouthernHemisphere).to(beTrue())
            }
        }

        describe("isInWesternHemisphere") {
            it("returns true if the coordinate is in the western hemisphere") {
                expect(coord1.isInWesternHemisphere).to(beTrue())
                expect(coord2.isInWesternHemisphere).to(beFalse())
            }
        }

        describe("isInEasternHemisphere") {
            it("returns true if the coordinate is in the eastern hemisphere") {
                expect(coord1.isInEasternHemisphere).to(beFalse())
                expect(coord2.isInEasternHemisphere).to(beTrue())
            }
        }

        describe("distanceTo()") {
            it("should take another coordinate and return the distance between the two") {
                expect(coord1.distanceTo(coordinate: coord2)).to(beCloseTo(12187.117))
            }
        }
    }
}

//
//  PizzaDeliveryServiceTest.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Quick
import Nimble
@testable import StructLove

class PizzaDeliveryServiceSpec: QuickSpec {
    override func spec() {
        var service = PizzaDeliveryService(location: Coordinate(latitude: 50.0, longitude: 10.0))

        describe("initializer") {
            it("sets the struct's properties") {
                expect(service.location.latitude).to(beCloseTo(50.0))
                expect(service.location.longitude).to(beCloseTo(10.0))
                expect(service.pizzasAvailable).to(equal(10))
            }
        }

        describe("isInRange()") {
            it("returns true if the destination is in range of the service") {
                let dest = Coordinate(latitude: 45.0, longitude: 10.0)
                expect(service.isInRange(destination: dest)).to(beTrue())
            }

            it("returns false if the destination is not in range of the service") {
                let dest = Coordinate(latitude: -30.0, longitude: 10.0)
                expect(service.isInRange(destination: dest)).to(beFalse())
            }
        }

        describe("deliverPizzaTo()") {
            it("returns true and reduces inventory if the destination is in range") {
                service.pizzasAvailable = 10
                let dest = Coordinate(latitude: 45.0, longitude: 10.0)
                let res = service.deliverPizzaTo(destination: dest)
                expect(res).to(beTrue())
                expect(service.pizzasAvailable).to(equal(9))
            }

            it("returns false and does not reduce inventory if the destination is not in range") {
                service.pizzasAvailable = 10
                let dest = Coordinate(latitude: -30.0, longitude: 10.0)
                let res = service.deliverPizzaTo(destination: dest)
                expect(res).to(beFalse())
                expect(service.pizzasAvailable).to(equal(10))
            }

            it("returns false if no pizzas are available") {
                service.pizzasAvailable = 0
                let dest = Coordinate(latitude: 45.0, longitude: 10.0)
                let res = service.deliverPizzaTo(destination: dest)
                expect(res).to(beFalse())
            }
        }
    }
}

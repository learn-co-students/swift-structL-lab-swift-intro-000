//
//  PersonTest.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Quick
import Nimble
@testable import StructLove

class PersonSpec: QuickSpec {
    override func spec() {
        let home = Coordinate(latitude: 40.0, longitude: 10.0)
        var person = Person(firstName: "John", lastName: "Doe", home: home)

        beforeEach {
            person = Person(firstName: "John", lastName: "Doe", home: home)
        }

        describe("initializer") {
            it("sets the struct's properties") {
                expect(person.firstName).to(equal("John"))
                expect(person.lastName).to(equal("Doe"))
                expect(person.home.latitude).to(beCloseTo(40.0))
                expect(person.home.longitude).to(beCloseTo(10.0))
                expect(person.isHungry).to(beTrue())
            }
        }

        describe("eatPizzaFrom()") {
            it("consumes a pizza if in range of the pizza delivery service") {
                let serviceLoc = Coordinate(latitude: 45.0, longitude: 10.0)
                let service = PizzaDeliveryService(location: serviceLoc)
                let res = person.eatPizza(from: service)
                expect(res).to(beTrue())
                expect(person.isHungry).to(beFalse())
            }

            it("does not consume a pizza if not in range of the pizza delivery service") {
                let serviceLoc = Coordinate(latitude: -30.0, longitude: 10.0)
                let service = PizzaDeliveryService(location: serviceLoc)
                let res = person.eatPizza(from: service)
                expect(res).to(beTrue())
                expect(person.isHungry).to(beFalse())
            }

            it("does not consume a pizza if not hungry") {
                let serviceLoc = Coordinate(latitude: 45.0, longitude: 10.0)
                let service = PizzaDeliveryService(location: serviceLoc)
                person.isHungry = false
                let res = person.eatPizza(from: service)
                expect(res).to(beFalse())
            }
        }
    }
}

//
//  TigerTest.swift
//  StructLove
//
//  Created by James Campagno on 8/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.

import Quick
import Nimble
@testable import StructLove

class TigerSpec: QuickSpec {
    override func spec() {
        
        var tiger = Tiger(name: "Bran")
        
        describe("eat()") { 
            it("Should take in no arguments and return nothing. It should set the isHungry property to false.") {
                tiger.isHungry = true
                tiger.eat()
                expect(tiger.isHungry).to(equal(false))
            }
        }
    }
}

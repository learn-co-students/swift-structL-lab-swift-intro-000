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
            it("should take no arguments and set isHungry to false") {
                tiger.isHungry = true
                tiger.eat()
                expect(tiger.isHungry).to(beFalse())
            }
        }
    }
}

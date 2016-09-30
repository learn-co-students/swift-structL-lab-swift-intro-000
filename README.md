# Struct Pizza Delivery Lab 

![](http://i.imgur.com/5EXsgMl.jpg)  

> My only advice is to stay aware, listen carefully, and yell for help if you need it. -[Judy Blume](https://en.wikipedia.org/wiki/Judy_Blume)

## Overview

In this lab, you'll implement a variety of structs and create properties for them. 

## Instructions

This lab will test what you learned about structs in the previous lesson. It will start off pretty easy, but ramp up in difficulty as it goes along.

Tests are included in this lab. When you first open `StructLove.xcworkspace`, you can run the tests. They'll all fail. As you work through the lab, try running the tests each time you complete another section. By the end, all the tests will pass, and you'll have finished the lab.

Let's get started!

### `Tiger`

Let's start off easy: By implementing a simple struct called `Tiger`. The `Tiger` you implement in this lab is pretty basic: It has a name, and it is either hungry or not hungry, just like tigers in the real world.

1. In the `Tiger.swift` file, define a struct called `Tiger`.
2. Add two properties to your `Tiger` struct:
	1. A `String` property called `name`
	2. A `Bool` property called `isHungry`		
3. Create an initializer for this struct. This struct should take one parameter of type `String` called `name`, and assign that parameter to the appropriate property. `isHungry` should be `true` by default. See the note below.
4. Implement a method called `eat()`. This method takes no parameters. It should change `isHungry` to `false`. (Remember how to write a struct method that changes a property?)

NOTE: It's best when you're assigning a default value to a stored property, to do it at the declaration of the property, not within the initializer. It's clear to anyone reading your code (including yourself) that when you look through the various properties of a class or struct, which ones have default values as opposed to having to go to the initalizer to see if the `init` function is providing a default value to certain stored properties.

### `Coordinate`

With that simple task out of the way, let's switch gears a bit. For the rest of this lab, you're going to implement a few structs to represent a pizza delivery service. This isn't any ordinary pizza delivery service, though. This is an intercontinental pizza delivery service that can deliver pizzas up to 5000 kilometers away.

The first thing you have to do, though, is create a struct that can represent a coordinate somewhere on Earth. Coordinates are made up of latitude/longtitude points. These points are `Double`s.

1. In `Coordinate.swift`, declare a struct called `Coordinate`.
2. Add two stored properties:
	1. A `Double` called `latitude`
	2. Another `Double` called `longitude`
3. Create an initializer with two parameters. Both parameters should be of type `Double` labeled as `latitude` and `longitude`. 
4. Add four _computed_ properties:
	1. A `Bool` called `isInNorthernHemisphere`. This returns `true` if the coordinate is in the Northern Hemisphere. (A coordinate is in the Northern Hemisphere if its latitude is positive.)
	2. A `Bool` called `isInSoutherHemisphere`. This returns `true` if the coordinate is in the Souther Hemisphere. (A coordinate is in the Souther Hemisphere if its latitude is negative.)
	3. A `Bool` called `isInWesternHemisphere`. This returns `true` if the coordinate is in the Western Hemisphere. (A coordinate is in the Western Hemisphere if its longitude is positive.)
	4. A `Bool` called `isInEasternHemisphere`. This returns `true` if the coordinate is in the Eastern Hemisphere. (A coordinate is in the Eastern Hemisphere if its longitude is negative.)
5. Create a method called `distance(to:)`. This method takes one parameter called `coordinate` of type `Coordinate`. `distance(to:)` should return the distance, in kilometers, between the two points. What are the two points? Well.. this function you're implementing is _only_ available to instances of the `Coordinate` struct. So if an instance of the `Coordinate` struct calls on this particular method, we will be passing in _another_ `Coordinate` instance as an argument. So we're left with two `Coordinate` instances which are available to us within our implementation of this function. The `Coordinate` which called on the function--we can access the `latitude` and `longitude` stored properties by typing `latitude` or `longitude`. We can also access these stored properties by typing `self.latitude` or `self.longitude`. The parameter of this function is called `coordinate`. We can access this coordinate's stored properties by typing `coordinate.latitude` or `coordinate.longitude`. 
	1. The distance between two coordinates requires some hairy math. The formula is **acos(sin(latitude<sub>1</sub>) * sin(latitude<sub>2</sub>) + cos(latitude<sub>1</sub>) * cos(latitude<sub>2</sub>) * cos(longitude<sub>1</sub>-longitude<sub>2</sub>)) * 6371000 / 1000**. `acos()` and `sin()` are both functions you can call in Swift.
	2. `latitude` and `longitude` need to be converted to _radians_. A `radians` property has been created for you to do this, so you can call `latitude.radians` to get the latitude in radians.

### `PizzaDeliveryService`

Next, you have to create a struct to represent a pizza delivery service.

1. In `PizzaDeliveryService.swift`, declare a struct called `PizzaDeliveryService`.
2. Your `PizzaDeliveryService` struct should have two properties:
	1. A `Coordinate` called `location` that represents where the pizza delivery service is located.
	2. An `Int` called `pizzasAvailable`. This should be a _variable_. It represents the service's inventory.
3. Create an initializer that takes one parameter, a `Coordinate` called `location`, and assigns it to the `location` property. It should also make sure the `pizzasAvailable` property is initially set to `10`.
4. Create a method called `isInRange(to:)`. This method takes one parameter, a `Coordinate` called `destination`, and returns `true` if the destination is no more than 5000 kilometers from the pizza delivery service.
5. Create a method called `deliverPizza(to:)`. This method takes one parameter, a `Coordinate` called `destination`. If the destination is in range of the pizza delivery service, it subtracts one from the number of pizzas available and returns `true`. Otherwise, it simply returns `false`. If there are no pizzas available, it also returns `false`.

### `Person`

Finally, you have to create a `Person` struct, so someone can eat all these pizzas.

1. In `Person.swift`, declare a new struct called `Person`.
2. Add four properties to your `Person` struct:
	1. A `String` called `firstName`
	2. A `String` called `lastName`
	3. A `Coordinate` called `home`
	4. A `Bool` called `isHungry`
3. Create an initializer that takes three parameters: a `String` called `firstName`, a `String` called `lastName`, and a `Coordinate` called `home`. These parameters should be assigned to the appropriate properties. `isHungry` should initially be set to `true`.
4. Create a method called `eatPizza(from:)`. This method takes one parameter, a `PizzaDeliveryService` called `service` that represents where the pizza is being ordered from. If the person is hungry _and_ the service is in range of the person's home, then the `isHungry` property should be set to `false` and the method should return `true`. If the person is not hungry or the service is not in range of the person's home, the method should simply return `false`.

That's it! Run the tests for this project. If they all pass, you have completed the lab! If not, look back over these directions and try to find and fix what you did wrong. Good luck!

<a href='https://learn.co/lessons/StructL' data-visibility='hidden'>View this lesson on Learn.co</a>

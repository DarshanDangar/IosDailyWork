//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//enum

enum Trail {
    
}
enum ColorName {
    case black
    case silver
    case gold
    case gray
    case white
}
let fill = ColorName.black
print(fill)


enum ColorNameType:String {
    case black = "blackhh"
    case silver = "silver"
    case gold = "gold"
    case gray
}
let fillType = ColorNameType.gray
print(fillType)


enum ColorNameWithoutType: String {
    case black
    case silver
    case gold
    case gray
    
}

enum ColorNameusingOneCase: String {
    case black,silver,gold,gray,whitr
}
var directionToHead = CompassPoint.south
enum CompassPoint {
    case north
    case south
    case east
    case west
}
switch directionToHead {
case .north:
    print("The direction is north")
case .south:
    print("The direction is south")
case .east:
    print("The direcction is east")
case .west:
    print("The direction is west")
}

enum Planet_enum {
    case north
    case earth
}

enum Planet_enum2 {
    case north
    case earth
}

//iterating over Enumration cases
enum Beverages: CaseIterable {
    case coffee, tea, juice
}
let beverag = Beverages.allCases
type(of: beverag)
print("\(Beverages.allCases.count) beverages available")

for beverage in Beverages.allCases {
    print(beverage)
}

//Associated Values
enum Distance {
    case km(a:String = "fgj")
    case m(String)
}

Distance.km()

//print(dis)
Distance.m("5 m")

//Associated Multiple values
enum Mark {
    case subject(Int,Int,Int,Int,Int)
    case grade(String,String,String,String,String)
}
var mark = Mark.subject(95, 90, 85, 87, 90)
print(mark)
var grade = Mark.grade("A1", "A1", "B1", "B1", "A2")
print(grade)

//Name Associated Values
enum Pizza {
    case small(inches: Int)
    case medium(inches: Int)
    case Large(inches: Double)
}
Pizza.Large(inches: 12)
Pizza.medium(inches: 10)
Pizza.small(inches: 8)

//Raw values

enum Vehicle: String {
    case car = "Four wheeler"
    case bike = "Two wheeler"
    case truck = "Six and more wheeler"
}
Vehicle.bike.rawValue

var planet_name = Planet_enum.earth
switch planet_name {
case .north:
    print("North Direction")
case .earth:
    print("Earth is a safe place for human")
}


enum Num : Int{
    case num1 = 1,num2,num3,num4
}
var n = Num.num3
print(n)

//

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
print(Planet.venus.rawValue)

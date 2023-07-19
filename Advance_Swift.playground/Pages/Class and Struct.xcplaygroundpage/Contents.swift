//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//Structure and Classes
//define struct and class



struct SomeStructure {
    
}
class SomeClass {
    
}

struct Resolution {
    var width = 0
    var height = 0
    var length:Int?
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var framerate = 0.0
    var name: String?
}



//create instance struct and class

var someResolution = Resolution()
var someVideoMode = VideoMode()

class Bike {
    var name = ""
    var color = ""
    var price = 0
}

var bikeSplander = Bike()
bikeSplander.name = "Splander"
bikeSplander.color = "Silver"
bikeSplander.price = 100000

print(type(of:bikeSplander))

print(bikeSplander.price)

//create multiple objects of class

var bike2 = Bike()
bike2.name = "Royal Enfield classic 350"
print(bike2.name)

var bike3 = Bike()
bike3.name = "Java"
print(bike3.name)

class MyBike {
    var name: String
    var price: Int
    
    init(name: String, price: Int){
        self.name = name
        self.price = price
    }
}

var bullet = MyBike(name: "Royal Enfield", price: 180000)
print("Bike name is: \(bullet.name) and it's price is: \(bullet.price)")
//Accessing Properties


print("The width of some resolution is: \(someResolution.width)")
print("The length of some resolution is: \(someResolution.length)")

print("The use of video sub Property resolution width is: \(someVideoMode.resolution.width)")
print("The use of video sub Property resolution width is: \(someVideoMode.resolution.length)")

someVideoMode.resolution.length = 5
print("The use of video sub Property resolution width is: \(someVideoMode.resolution.length)")
someVideoMode.resolution.width = 1800

someResolution.width




//memberwise initialize for structure types

let memberResolution = Resolution(width: 500,height: 100, length: 100)
print(memberResolution)

//class is reference type
class Abc {
    var xc = 5
}
 var dsa = Abc()
dsa.xc

var asd = Abc()
asd.xc = 6
dsa = asd
print(asd.xc)
asd.xc = 7
print(dsa.xc)
// === (identical to operator) use two constants and variables of class type refer to exectly the same class instance
if asd === dsa {
    print("asd and dsa refer to the same Abc instance")
}

//struct is value type

struct TypeCheck {
    var a = 5
}

var checktype = TypeCheck().a
print(checktype)
var typecheck = checktype
print(typecheck)

typecheck += 5
print(typecheck)

print(checktype)

checktype += 2
print(checktype)

print(typecheck)

if checktype != typecheck {
    print("checktype and typecheck refer to the different copy it is value type")
}

//struct Meeting {
//    var name: String
//    var reminderDate: Int?
//
//
//    mutating func cancel(withMessage message: String) {
//        reminderDate = 5
//    }
//}
//
//var asf = Meeting(name: "jy")
//
//print(asf.reminderDate)


struct Stack {
    public private(set) var items = [Int]() // Empty items array
    
    mutating func push(_ item: Int) {
        items.append(item)
    }
    
    mutating func pop() -> Int? {
        if !items.isEmpty {
           return items.removeLast()
        }
        return nil
    }
}

var stack = Stack()
stack.push(4)
stack.push(78)
stack.items // [4, 78]
stack.pop()
stack.items // [4]

//struct Stack1 {
//    public private(set) var items = [Int]() // Empty items array
//
//     func push(_ item: Int) {
//        items.append(item)
//    }
//
//     func pop() -> Int? {
//        if !items.isEmpty {
//           return items.removeLast()
//        }
//        return nil
//    }
//}

//var stack1 = Stack1()
//stack1.push(4)
//stack1.push(78)
//stack1.items // [4, 78]
//stack1.pop()
//stack1.items // [4]


//var srjk = 5
//func vbn(){
//
//    srjk = 8
//
//}
//vbn()
//print(srjk)

enum Compass {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = Compass.south
print(currentDirection)
let rememberedDirection = currentDirection
print(rememberedDirection)

currentDirection.turnNorth()
print(currentDirection)
print(rememberedDirection)


//enum Compass {
//    case north, south, east, west
//    func turnNorth() {
//         currentDirection = Compass.north
//    }
//}
//var currentDirection = Compass.south
//print(currentDirection)
//let rememberedDirection = currentDirection
//print(rememberedDirection)
//
//currentDirection.turnNorth()
//print(currentDirection)
//print(rememberedDirection)

class Res {
    var num1 = 2
    var num2 = 3
    
    func area() -> Int {
        return num1 * num2
    }
    
    func scaleBy(value: Int) {
        num1 *= value
        num2 *= value
    }
}

var rect = Res()
rect.area()
rect.scaleBy(value: 3)
rect.area()


struct ResStruct{
    var num1 = 2
    var num2 = 3
    
    
    func area() -> Int {
        print(num1)
        print(num2)
        return num1 * num2
        
    }
    
    mutating func scalBy(value: Int) {
        print("before scalby num1 and num2 is : \(num1) \(num2)")
        num1 *= value
        num2 *= value
        print("after scaleby num1 and num2 is : \(num1) \(num2)")
        
    }
}

var rectStruct = ResStruct()
rectStruct.area()
rectStruct.scalBy(value: 5)
rectStruct.area()

//access control
public var img = 555
class AccessControl {
    
    
    func add (a: Int) -> () {
        print(a + img)
    }
    
}
var plus = AccessControl()

class Checking {
    var im = img
    
}
Checking()
print(Checking().im)

open class AccessControl1 {
    public var publicAccess = "This is public property"
}

class AccessControl2 {
    var publicAccess = AccessControl1().publicAccess
}

//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//extension
class Temperature {
    var celcius: Double = 0
    func setTemp(celcius: Double) {
        self.celcius = celcius
        print("Celcius: \(celcius)")
    }
}
//use of extension
extension Temperature {
    func convert() {
        var fehrenheit = (celcius * 1.8) + 32
        print("fehrenheit: \(fehrenheit)")
    }
}

var temp = Temperature()
temp.setTemp(celcius: 16)
temp.convert()

//computed properties
class CircleExtension {
    var radius: Double = 0
}

extension CircleExtension {
    var area: Double {
        return 3.14 * radius * radius
    }
}

//# Extensions must not contain stored properties : Error
//extension CircleExtension {
//    var rect = 500
//}

var circleExtension = CircleExtension()
circleExtension.radius = 5
print(circleExtension.area)

//initializers

struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
}

//default
//var rect = Rect()

//memberwise value

var newRect = Rect(origin: Point(x: 5, y: 6),size: Size(width: 8, height: 6))

//designated init use
//extension Rect {
//    init(center: Point , size: Size) {
//        self.origin = center
//        self.size = size
//    }
//}

//conveniance init

extension Rect {
    init(center: Point , size: Size) {
        self.origin = center
        self.size = size
    }
}
struct A1 {
    var a : Int
//    init (a: Int) {
//        self.a = a
//    }
}
extension A1{
     init () {
       
        //self.init(a: 7)
        self.a = 6
    }
}
var ae = A1(a: 8)

ae.a

//methods

extension Int {
    func repeting(cl: () -> ()) {
        for _ in 0..<self{
            cl()
        }
    }
}
8.repeting {
    print(3)
}

extension Int {
    func repeated(cl: () -> ()) {
        for _ in 0..<self{
            cl()
        }
    }
}
5.repeting {
    print(5,terminator: ",")
}

//mutating instance methods

struct UseExtension {
    var b: Int
}

extension UseExtension {
    mutating func pow() {
        b = b * b
    }
}

var useExtension = UseExtension(b: 5)
print(useExtension.pow())

//subscript
//
extension Int {
    subscript(digit: Int) -> Int {
        var temp = self
        var tem = 0

        for _ in 0...digit {
              tem = temp % 10
              temp = temp / 10
        }
return tem
    }
}

55644[2]

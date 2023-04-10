//: [Previous](@previous)

import Foundation

// 8.  Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company. And demonstrate the usage of inheritance.

class Person {
    
    var name: String
    var occupation:String
    
    init(name: String, occupation: String){
        self.name = name
        self.occupation = occupation
    }
    
}

class Student: Person {
    
    var collegeName: String
    
    init(collegeName: String, name: String, occupation: String){
        self.collegeName = collegeName
        super.init(name:name, occupation: occupation)
    }
}
    
class Employee: Person {
        
    var compnyName: String
        
    init(compnyName: String, name: String, occupation: String) {
        self.compnyName = compnyName
        super.init(name: name, occupation: occupation)
    }
        
}
       
var student = Student(collegeName: "GEC", name:"Darshan" , occupation: "student")
//print(student)
print(student.name)
print(student.collegeName)
print(student.occupation)
    
// Ans

// Darshan
// GEC
// student
    
var employee = Employee(compnyName: "Pvt.ltd", name: "Darshan", occupation: "Employee")
print(employee.compnyName)
print(employee.name)
print(employee.occupation)

// Ans

// Pvt.ltd
// Darshan
// Employee

// 9.  Create one structure to show usage of mutating function in swift.

struct Mutating {
    
    var number: Int
    
    mutating func  change( _ num: Int) {
        number = num
    }
    
}

var changeNumber = Mutating(number: 12)
print(changeNumber.number)

// Ans

// 12

changeNumber.number = 14
print(changeNumber.number)

// Ans

// 14

// 10.  Create one class inheritance demo to show usage of method overriding.

class Construction {
    
    var type: String
    var material:String
    
    init(type: String,material: String) {
        self.type = type
        self.material = material
    }
    
    func price(_ width: Double, _ height: Double) {
        var price = width * height * 7000
        print(price)
    }
    
}

class Flat: Construction {
    
    var address:String
    
    init(address:String, type: String, material: String) {
        self.address = address
        super.init(type: type, material: material)
    }
    
    override func price(_ width: Double, _ height: Double) {
        let price = width * height * 7000
        print(price)
    }
    
}

var flat = Flat(address: "Ahmedabad", type:"Flat", material: "Best Quality")
flat.price(200,100)

// Ans

// 140000000.0

// 11.  Create one swift class to show usage of type methods.

// 12.  Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output/ error. (you will learn difference between class and static)

class Area {
    
    static func circleArea(radius: Double) {
        print(3.14 * radius * radius)
    }
    
    class func squareArea(side: Double) {
        print(side * side)
    }
    
}

class ShapeArea: Area {
    
    override class func squareArea(side: Double) {
        print(side * side)
    }
    
    // override staticfunc circleArea(radius: Double) {
    // print(3.14 * radius * radius)
    // }
    
}

var square: () = ShapeArea.squareArea(side: 5)
print(square)

// Ans

// 25.0

// 19. Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance. // Here Music class have property singer, composer

class Song {
    var singer: String
    var type: String
    var composer: String
    
    init(_ singer: String, _ type: String, _ composer: String) {
        self.singer = singer
        self.type = type
        self.composer = composer
    }
    
    func isPlay() {
        print("music is playing")
    }
    
}

class HipHop: Song {
    
    var earn: Double
    
    init(_ earn: Double, _ singer: String, _ type: String, _ composer: String) {
        self.earn = earn
        super.init(singer, type, composer)
    }
    
    override func isPlay() {
        print("This song type is: \(self.type), singer name is: \(self.singer), composer name is: \(self.composer) and this song earning is: \(self.earn)")
    }
    
}

class Classical: Song {
    var earn: Double
    
    init(_ earn: Double, _ singer: String, _ type: String, _ composer: String) {
        self.earn = earn
        super.init(singer, type, composer)
    }
    
    override func isPlay() {
        print("This song type is: \(self.type), singer name is: \(self.singer), composer name is: \(self.composer) and this song earning is: \(self.earn)")
    }
    
}

var song = Song("A R Raheman", "Clasical", "xyz Comp")
song.isPlay()

// Ans

// music is playing

var hiphop = HipHop(2500000, "A r", "compney", "xyz")
hiphop.isPlay()

// Ans

// This song type is: compney, singer name is: A r, composer name is: xyz and this song earning is: 2500000.0


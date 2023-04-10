//: [Previous](@previous)

import Foundation

//1.    Create one structure of type Work, which have some properties like work location, work hours and one string array of project names. And create a function inside structure which returns all project names for the person.

struct Work {
    
    var workLocation: String
    var workHour: Int
    var projectName: [String]
    
    func personWork() {
        for i in projectName{
            print(i)
        }
    }
    
}

var person = Work(workLocation: "Ahmedabad", workHour: 8, projectName: ["Health care Application", "Music Player Application", "Library Management"])
person.personWork()

// Ans

// Health care Application
// Music Player Application
// Library Management

//2.    Create a structure example which demonstrates use of initializer in structures.

struct Animal {
    
    var name: String
    var type: String
    var life: Int
    
    init(name: String, type: String, life: Int) {
        self.name = name
        self.type = type
        self.life = life
    }
    
}

var dog = Animal(name: "Dog", type: "pet", life: 10)
print(dog.name)
print(dog.type)
print(dog.life)

// Ans

// Dog
// pet
// 10

//3.    Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters.

struct Building {
    
    var buildingType: String = "Default Building Type"
    var address: String = "Default Address"
    var price: String = "Default Price"
    
}

var rawHouse = Building(buildingType: "Raw House", address: "SG Highway, Ahmedabad", price: "1.5 crore")
print(rawHouse)

// Ans

// Building(buildingType: "Raw House", address: "SG Highway, Ahmedabad", price: "1.5 crore")

var flat = Building()
flat.buildingType = "Flat"
flat.address = "Jodhpur Char Rasta"
flat.price = "85,00,000"
print(flat)

// Ans

// Building(buildingType: "Flat", address: "Jodhpur Char Rasta", price: "85,00,000")

//4.    Create one structure which have initializer which takes array of int as input returns  two arrays one of all even numbers and another is all odd numbers.
//      Input: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12]
//      Output: even numbers are: [6, 8, 10, 8, 12]
//              Odd numbers are: [1, 3, 5, 9, 7]

struct NumberType {
    
    var number: [Int]
    
    func checkType() -> ([Int], [Int]) {
        var odd: [Int] = []
        var even: [Int] = []
        for i in number {
            if i % 2 == 0 {
                even.append(i)
            }
            else{
                odd.append(i)
            }
        }
        return (even, odd)
    }
    
}

var number = NumberType(number: [1,3,5,6,8,10,9,7,8,10])
var checkNumberType = number.checkType()
print("even numbers are: \(checkNumberType.0) Odd numbers are: \(checkNumberType.1)")

// Ans

// even numbers are: [6, 8, 10, 8, 10] Odd numbers are: [1, 3, 5, 9, 7]

//5.    Create one swift structure program for person that contains basic details like name, age, gender. Then create one array of person with all details. Print all details of that array.
// Consider two persons array for Joe and Harry. But in your code Its size can be vary.
//      Output be like: Name: Joe, Gender: Male, Age: 27
//      Name: Harry, Gender: Male, Age: 21

struct PersonDeails {
    
    var name: String
    var gender: String
    var age: String
    
    func deatils() {
        print(name,gender,age)
        print("Name: \(name), Gender: \(gender), Age: \(age)")
    }
    
}

var person1 = PersonDeails(name: "Darshan", gender: "Male", age: "21")
person1.deatils()

// Ans

// Darshan Male 21,Name: Darshan, Gender: Male, Age: 21

var person2 = PersonDeails(name: "Joe", gender: "Male", age: "27")
person2.deatils()

// Ans

// Joe Male 27, Name: Joe, Gender: Male, Age: 27

//6.    Perform same example given in class question no 10 and check output using structure. Try to find difference between these two outputs and try to figure 

struct Example {
    
    var name: String = ""
    
}

let exampleOne = Example(name: "Hello")
print(exampleOne.name)
var exampleTwo = exampleOne
exampleTwo.name = "Hey"
print(exampleOne.name)
print(exampleTwo.name)

// Ans

// Hello
// Hey

// Because struct are value type therefore it assign any other object then generate unique copy and can't change both value

//7.    Try to figure out basic difference between class and structures and give a demo for same.

struct Bus {
    
    var name: String
    var type: String
    var root: String
    
}

var bus = Bus(name: "Volvo", type: "Seater", root: "Ahmedabad - Rajkot")
print(bus)

// Bus(name: "Volvo", type: "Seater", root: "Ahmedabad - Rajkot")

// struct not inherit
// Error: Inheritance from non-protocol type 'Bus'

//struct Gsrtc: Bus {
//
//}

// struct have default initializer therfore not initialize properties where we define

// struct are value type

// bus and gsrtc both struct instance and both are generate unique copy therfor both value difference

var gsrtc = bus
gsrtc.name = "gsrtc"
print(gsrtc)

// Bus(name: "gsrtc", type: "Seater", root: "Ahmedabad - Rajkot")

// class are reference type therefore both

class Transport {
    
    var name: String
    var root: String
    var type: String
    
    init(name: String, root: String, type: String) {
        self.name = name
        self.root = root
        self.type = type
    }
    
}

var truck = Transport(name: "Tata", root: "Rajkot - Ahmedabad", type: "5 tone")
print(truck.name)
print(truck.root)
print(truck.type)

// Ans

// Tata
// Rajkot - Ahmedabad
// 5 tone

var bolero = truck
bolero.type = "2 tone"
print(bolero.type)
print(truck.type)

// Ans

// both properties same value that is reference type
// 2 tone
// 2 tone

// class inherite and initializer need

class Eicher: Transport {
    
    var price: String
    var tyofBody: String
    
    init(price: String, tyofBody: String, name: String, root: String, type: String) {
        self.price = price
        self.tyofBody = tyofBody
        super.init(name: name, root: root, type: type)
    }
    
}

var eicher = Eicher(price: "25,00,000", tyofBody: "17 ft", name: "Eicher", root: "Rajkot-Ahmedabad", type: "10 tone")
print(eicher.name)
print(eicher.tyofBody)
print(eicher.type)
print(eicher.price)
print(eicher.root)

// Ans

// Eicher
// 17 ft
// 10 tone
// 25,00,000
// Rajkot-Ahmedabad










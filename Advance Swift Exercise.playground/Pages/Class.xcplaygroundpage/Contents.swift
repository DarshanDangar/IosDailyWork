//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//1.    Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.

class Class {
    
    var variableOne = 0
    var VariableTwo = 0
    
}

var instanceofClass = Class()
instanceofClass.variableOne = 5
instanceofClass.VariableTwo = 7
print("variable one is: \(instanceofClass.variableOne)")
print("Variable two is: \(instanceofClass.VariableTwo)")

// Ans

// variable one is: 5
// Variable two is: 7

//2.    Create a swift program to demonstrate usage of swift class for usage of multiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.

class College {
    
    var name: String
    var collegeName: String
    var department: String
    
    init(name: String, collegeName: String) {
        self.name = name
        self.collegeName = collegeName
        self.department = "Computer Science"
    }
    
    init(name: String, department: String) {
        self.name = name
        self.department = department
        self.collegeName = "GEC"
    }
    
}

var college = College(name: "Darshan", collegeName: "GEC Modasa")
print("student name is: \(college.name) , college name is: \(college.collegeName) , and student's department is: \(college.department)")
college = College(name: "Shyam", department: "Computer Science")
print("student name is: \(college.name) , college name is: \(college.collegeName) , and student's department is: \(college.department)")

// Ans

// student name is: Darshan , college name is: GEC Modasa , and student's department is: Computer Science
// student name is: Shyam , college name is: GEC , and student's department is: Computer Science

//3.    Create a swift class without initializers and access (write, read) its properties using instance of class.

class WithoutInitializers {
    
    var houseNo: Int = 0
    var houseName: String = "nil"
    
}

var withOutInitializers = WithoutInitializers()
print(withOutInitializers.houseNo)
print(withOutInitializers.houseName)

// Ans

// 0
// nil

withOutInitializers.houseNo = 7
withOutInitializers.houseName = "The Grand Villa"
print(withOutInitializers.houseNo)
print(withOutInitializers.houseName)

// Ans

// 7
// The Grand Villa

//4. Create a swift class which is having code to return square of given number and access this code using class instance.

class Code {
    
    var number: Int = 0
    var square: Int {
        get{
            return number
        }
        set{
            number = newValue * newValue
        }
    }
    
}

var squareofNumber = Code()
squareofNumber.square = 5
print(squareofNumber.number)

// Ans

// 25

//5.    Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.

class Person {
    
    var name: String
    var rollNo: Int
    
    init(name: String, rollNo: Int) {
        self.name = name
        self.rollNo = rollNo
    }
    
}

class Student: Person {
    
    var branch: String
    
    init(branch: String, name: String, rollNo: Int) {
        self.branch = branch
        super.init(name: name, rollNo: rollNo)
    }
    
}

class Library: Person {
    
    var bookName: String
    
    init(bookName: String, name: String, rollNo: Int) {
        self.bookName = bookName
        super.init(name: name, rollNo: rollNo)
    }
    
}

var library = Library(bookName: "C", name: "Darshan", rollNo: 17)
print("The Student Name is: \(library.name), it's RollNo is: \(library.rollNo) and that guy purcase book name is: \(library.bookName)")

// Ans

// The Student Name is: Darshan, it's RollNo is: 17 and that guy purcase book name is: C

var student = Student(branch: "Computer Science", name: "Shyam", rollNo: 51)
print("The Student Name is: \(student.name), it's RollNo is: \(student.rollNo) and that guy branch is: \(student.branch)")

// Ans

// The Student Name is: Shyam, it's RollNo is: 51 and that guy branch is: Computer Science

// 6.    Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.

open class Calculator {
    
    func sum(no1: Int, no2: Int) -> Int {
        return no1 + no2
    }
    
}



class Sum: Calculator {
    
    override func sum(no1: Int, no2: Int) -> Int {
        var number: Int = no1 + no2
        return number
    }
    
}

var sum = Sum()
print(sum.sum(no1: 5, no2: 10))

// Ans

// 15

// 7.    Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.
//      example:  let instance = Example(value: 5)
//      let result = instance.doPower(power: 3)
//      then it should return 5's 3 power (125)

class PowerCalculator {
    
    var digit: Int
    
    init(digit: Int) {
        self.digit = digit
    }
    
    func powerCalculator(power: Int) -> Int{
        var temp = 1
        for _ in 1...power {
            temp = temp * digit
        }
        return temp
    }
    
}

var powerCalculator = PowerCalculator(digit: 5)
print(powerCalculator.powerCalculator(power: 3))

// Ans

// 125

// 8.    Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some different property which is not common.

class Vehicles {
    
    var nameOfVehicle: String
    var price: String
    
    init(nameOfVehicle: String, price: String) {
        self.nameOfVehicle = nameOfVehicle
        self.price = price
    }
    
}

class Bike: Vehicles {
    
    var fuelType: String
    var numberOfWheel: Int
    
    init(fuelType: String, numberOfWheel: Int) {
        self.fuelType = fuelType
        self.numberOfWheel = numberOfWheel
        super.init(nameOfVehicle: "Bike", price: "1,00,000")
    }
    
}

class Car: Vehicles {
    
    var color: String
    var type: String
    
    init(color: String, type: String) {
        self.color = color
        self.type = type
        super.init(nameOfVehicle: "Car", price: "25,00,000")
    }
    
}

var royalEnfield = Bike(fuelType: "Petrol", numberOfWheel: 2)
print(royalEnfield.fuelType)
print(royalEnfield.numberOfWheel)
print(royalEnfield.price)
print(royalEnfield.nameOfVehicle)

// Ans

// Petrol
// 2
// 1,00,000
// Bike

var inova = Car(color: "Silver", type: "Suv")
print(inova.color)
print(inova.type)
print(inova.nameOfVehicle)
print(inova.price)

// Ans

// Silver
// Suv
// Car
// 25,00,000

//9.    Create a person swift class with person name initializer and create one function to greet that person.
//      Example: let person1 = Person(name: Joe)
//      Person1.greet() // This should print “Hello Joe”

class Greet {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func greeting() -> String {
        return "Hello \(name)!"
    }
    
}

var greetPerson = Greet(name: "Darshan")
print(greetPerson.greeting())

// Ans

// Hello Darshan!

//10.    Create a swift class with some property. And then set its value using initializer of class, then perform below actions.
//          let example1 = Example()
//          Example1.a = “Hello”
//          let example2 = example1
//          example2.a = “Hi”
//          print(example1.a)
//          print(example2.a)
//// Consider ‘a’ as string property of example class.
//--> Check these two print outputs and try to find out the reason for that output.

class Example {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
}

let exampleOne = Example(name: "Hello")
print(exampleOne.name)
let exampleTwo = exampleOne
exampleTwo.name = "Hey"
print(exampleOne.name)
print(exampleTwo.name)

// Ans

// Because class are reference type therefore generate single copy and change all place same instance


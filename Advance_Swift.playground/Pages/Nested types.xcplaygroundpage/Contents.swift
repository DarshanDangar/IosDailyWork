//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//Nested Types

class Employee {
    var department = Department()
    class Department {
        var empId = 7
        var empName = "Darshan Dangar"
        func details() -> String {
            return "employee Id: \(empId) , Employee Name: \(empName)"
        }
    }
}

var employee = Employee()
print(employee.department.details())


class StudentNested {
    enum StudentType {
        case inteligence
        case good
        case average
    }
    func type() -> StudentType {
        return .inteligence
    }
    
}
class Teacher {
    var name = StudentNested()
    var type: StudentNested.StudentType
    init() {
        self.type = name.type()
    }
}
var result = StudentNested.StudentType.good
print(result)


class Car {
    var name: String
    var color: String
    var type: String
    init(name: String, color: String, type: String) {
        self.name = name
        self.color = color
        self.type = type
    }
}

class Fortuner: Car {
    var price: String
    var maxspeed: Int

    init(price: String, maxspeed: Int) {
        self.price = price
        self.maxspeed = maxspeed
        super.init(name: "FORTUNER", color: "White", type: "Suv")
    }
}

var fortuner = Fortuner(price: "45,00,000", maxspeed: 280)

class Vehicle {
    var car = Car(name: "RR", color: "Gold", type: "luxuriy")
}

var vehicle = Vehicle().car
vehicle.type

//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit{
        print("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "Darshan")
//print(reference1)
//reference1 = nil

reference2 = reference1
reference3 = reference1
//print(reference2?.name)
//print(reference3)

reference3 = nil

// strong reference

//class NameStrng {
//    let name: String
//    init(name: String) {
//        self.name = name
//        print(name)
//    }
//    var apartment: Apartment?
//    deinit{
//        print("\(name) deinitialized")
//    }
//}
//
//
//class Apartment {
//    let unit: String
//    init(unit: String) {
//        self.unit = unit
//        print(unit)
//    }
//    var nameother: NameStrng?
//    deinit{
//        print("\(unit) deinitialized")
//    }
//}

//var darshan: NameStrng?
//var unit4A: Apartment?
//
//darshan = NameStrng(name: "Darshan")
//unit4A = Apartment(unit: "4A")
//darshan?.apartment = unit4A
//unit4A?.nameother = darshan
//
//darshan = nil
//unit4A = nil

//solve arc problem using weak reference

class NameStrng {
    let name: String
    init(name: String) {
        self.name = name
        print(name)
    }
    var apartment: Apartment?
    deinit{
        print("\(name) deinitialized")
    }
}


class Apartment {
    let unit: String
    init(unit: String) {
        self.unit = unit
        print(unit)
    }
    weak var nameother: NameStrng?
    deinit{
        print("\(unit) deinitialized")
    }
}

var darshan: NameStrng?
var unit4A: Apartment?

darshan = NameStrng(name: "Darshan")
unit4A = Apartment(unit: "4A")
darshan?.apartment = unit4A
unit4A?.nameother = darshan

darshan = nil
unit4A = nil

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit{
        print("\(name) is being deinitialized")
    }
}

class CreditCard {
    let number: String
    unowned let customer: Customer
    init(number: String, customer: Customer) {
        self.number = number
        self.customer = customer
        print("\(number) and \(customer.name) is being initialized")
    }
    deinit{
        print("\(number) is being deinitialized")
    }
}

var nam: Customer?

nam = Customer(name: "Darshan")
nam?.card = CreditCard(number: "9999 8888 7777 6666", customer: nam!)
nam = nil



//func autoc (x: Int ,y: @autoclosure () -> ()){
//    print(x)
//    y()
//
//}
////let x =
//autoc(x: 5, y: print("ghg"))

//unowned optional reference
//
//class Department {
//    var name: String
//    var course: [Course]
//    init(name: String) {
//        self.name = name
//        self.course = []
//    }
//}
//
//class Course {
//    var name: String
//    unowned var department: Department
//    unowned var nextCourse: Course?
//    init(name: String, department: Department){
//        self.name = name
//        self.department = department
//        self.nextCourse = nil
//    }
//}
//
//let department = Department(name: "Computer Science")
//
//let intro = Course(name: "C Language", department: department)
//let intermediate = Course(name: "C++", department: department)
//let advance = Course(name: <#T##String#>, department: <#T##Department#>)

//var adf = "hjdp"
//var koj = adf as? Int


class  ClassAbc{
    var name: String
    var price: ClassXyz
    init(name: String) {
        self.name = name
        self.price = ClassXyz(quantity: 500)
    }
}

class ClassXyz{
    var quantity: Int
    unowned var cvh: ClassAbc?
    init(quantity: Int) {
        self.quantity = quantity

    }
}

var ame1 = ClassAbc(name: "Shyam")

var qun = ClassXyz(quantity: 5)

//class A {
//    var b : B?
//}
//class B {
//    var a : A?
//}
//
//var a = A()

class A {
    var x: Int
    var y: Int
    
    var z: B?
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
        
       
    }
    deinit{
        print("A is deinitalized")
    }
}

//var wer: A? = A(x: 5, y: 4)
//var qwe: A? = A(x: 6, y: 4)
//
//wer?.z = qwe
//qwe?.z = wer
//
//wer = nil
//qwe = nil


class B {
    var a: Int
    var b: Int
    unowned var c: A?
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    deinit{
        print("B is deinitalized")
    }
}

var wer: A? = A(x: 5, y: 4)
var qwe: B? = B(a: 6, b: 5)
wer?.z = qwe
qwe?.c = wer
wer = nil
qwe = nil


class Ax {
    
}

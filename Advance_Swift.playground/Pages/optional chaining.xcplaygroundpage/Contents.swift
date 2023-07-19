//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//optional Chaining

class Optional {
    var person: WithoutOptional?
}
class WithoutOptional {
    var age: Int = 5
}

var useOptional = Optional()
useOptional.person = WithoutOptional()

if let useOptionalUnwrap = useOptional.person?.age{
    print("\(useOptionalUnwrap)")
}else
{
    print("Please try again")
}


class Name {
    var name: String
    var age: Int?
    init(name: String){
        self.name = name
        //self.age = age
    }
}
class Student{
    var deatils: Name?
}

var student = Student()
student.deatils = Name(name: "Darshan")
student.deatils!.age

//Defining Model class for optional chaining
class OptChaining {
    var name: String?
    var age: String?
    var mono: String?
    
    func fullDeatils() -> String? {
        if let name = name, let age = age, let mono = mono{
            return "name: \(name) , age: \(age), mono: \(mono)"
        }else{
            return nil
        }
    }
}

var optChaining = OptChaining()
optChaining.name = "Darshan"
optChaining.age = "21"
optChaining.mono = "96875xxxxx"

optChaining.fullDeatils()

// Accessing properties through optional chaining

var optChainingOne = OptChaining()
optChainingOne.name = "Shyam"
optChainingOne.age = "21"
optChainingOne.mono = "xxxxxxxxxx"

func fullDeatil() -> OptChaining {
    print("function called")
    var fullDEatil = OptChaining()
    fullDEatil.age = "50"
    fullDEatil.name = "Shubham"
    return fullDEatil
}
fullDeatil()
fullDeatil().name
fullDeatil().age
fullDeatil().mono
fullDeatil().fullDeatils()

//Accessing Subscripts through optional chaining

struct House {
    var houseno: String
    var housename: String?
    subscript(houseno: String) -> String {
        get{
            return houseno
        }
        set{
            self.houseno = houseno
        }
    }
}

var house = House(houseno: "5")

house.housename = "jkh"
house["5"] = "7"
print(house)

//Accessing subscripts thrugh optional chaining

//var arrayofName = ["Darshan", "Shyam", "Shubham"]
//
//arrayofName[0][0] = "Shyam"
//print(arrayofName)
//
//var arrayofDictionary = [0: "Darshan",1: "Shyam",2: "Shubham"]
//arrayofDictionary[0]?[0] = "fgfg"

//

class SubScrip {
    var name: [Int] = []
    var age: Int?
    
    subscript (i: Int, j: Int) -> (Int,Int) {
        get{
            return (i,j)
        }
        set{
            name[i] = j
        }
    }
}

//Linking multiple Level


class Rectangle {
    var print1: Circle?
}

class Circle {
    var area = [Radius]()
    var areacount: Int {
        return area.count
    }
    subscript(i: Int) -> Radius {
        get{
            return area[i]
        }
        set{
            area[i] = newValue
        }
    }
    func circleprint() {
        print("The number of rooms: \(areacount)")
    }
    var rectarea: Circumference?
}

class Radius {
    let radiusname: String
    init(radiusname: String){
        self.radiusname = radiusname
    }
}

class Circumference {
    var circumName: String?
    var circumNumber: String?
    var circumArea: String?
    
    func buildingIdentifier() -> String? {
        if circumName != nil {
            return circumName
        }else if circumNumber != nil {
            return circumNumber
        }else {
            return nil
        }
    }
}

//let cirName = Rectangle()
//cirName.print1[0] = Radius(radiusname: "Diameter")
//let printing = Circle()
//
//printing.area.append(Radius(radiusname: "units"))

//let circname = Rectangle()
//circname.print1 = Circle()
//circname.print1?
//
//if let radiusName = circname.print1?[0].radiusname {
//   print("The first room name is \(radiusName).")
//} else {
//   print("Radius is not specified.")
//}

let circname = Rectangle()
circname.print1?[0] = Radius(radiusname: "Diameter")
let printing = Circle()

printing.area.append(Radius(radiusname: "Units"))
printing.area.append(Radius(radiusname: "Meter"))
circname.print1 = printing

if let radiusName = circname.print1?[0].radiusname {
   print("Radius is measured in \(radiusName).")
} else {
   print("Radius is not specified.")
}

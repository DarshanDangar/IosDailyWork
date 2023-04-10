//: [Previous](@previous)

import Foundation

// 13.  Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week.

class Weeks {
    
    var days = ["Sunday", "Monday", "Tuesday","Wednesday", "Thursday", "Friday", "Saturday"]
    
    subscript(index:Int) -> String {
        return days[index % days.count]
    }
    
}

var dayofWeek = Weeks()
print(dayofWeek[0])
print(dayofWeek[8])

// Ans

// Sunday
// Monday

// 14.  Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position.

class WeeksSubscript {

    var days = ["Sunday", "Monday", "Tuesday","Wednesday", "Thursday", "Friday","Saturday"]

    subscript(index: Int) -> String {
        if index >= 0 && index <= 6 {
            return days[index]
        } else {
            print("please enter digit 0 to 6")
        }
        return ""
    }
}

var dayofWeekSubscript = WeeksSubscript()
print(dayofWeekSubscript[0])
print(dayofWeekSubscript[7])

// Ans

// Sunday
// please enter digit 0 to 6


// 15.  Create one swift subscript program which takes range as input and returns the string between the ranges.

class Range {
    
    var strOne: String
    
    init(_ strOne:String){
        self.strOne = strOne
    }
    
    subscript(index1:Int, index2: Int) -> String {
        let ind1 = strOne.index(strOne.startIndex, offsetBy: index1)
        let ind2 = strOne.index(strOne.startIndex, offsetBy: index2)
        let range = ind1...ind2
        let str = strOne[range]
        return String(str)
    }
    
}

var range = Range("Darshan")
print(range[0,3])

// Ans

// Dars

// 16.  I have one integer array and create one function which takes range as input and returns all elements between the range.

class IntArray {
    
    var intArray = [1,2,3,4,5,6,7,8,9,10,11]
    
    subscript(a: ClosedRange<Int>) -> [Int] {
       Array(intArray[a])
    }
    
}

var intArray = IntArray()
print(intArray[2...6])

// [3, 4, 5, 6, 7]

// 17.  I have one key value pair array. Create one function using subscript which takes key as input and returns it’s value.
//    Output: let array = [[1: “Hello”], [2:“Hi”]]
//Now call function subscript(at: 1) it should print "Hello”

class Dictionary {
    
    let arrayOfDict = [[1: "Hello"], [2: "Hi.."]]
    
    subscript(digit:Int) -> String {
            for i in arrayOfDict {
                if i[digit] != nil{
                    return i[digit]!
                }
            }
        return ""
    }
    
}

var dict = Dictionary()
print(dict[1])

// Ans

// Hello

//18.  Create one array of type Person and create one subscript function which takes person name as input and returns person info like name, age, birthdate etc.

class PersonDeatil {

    var name: String
    var age: Int
    var birthdate: String
    
    init(name: String, age: Int, birthdate: String) {
        self.name = name
        self.age = age
        self.birthdate = birthdate
    }

}

var person1 = PersonDeatil(name: "Darshan", age: 21, birthdate: "28/10/2001")
var person2 = PersonDeatil(name: "Shyam", age: 21, birthdate: "15/01/2002")
var person3 = PersonDeatil(name: "Shubham", age: 21, birthdate: "01/02/2001")

var personArray: [PersonDeatil] = [person1, person2, person3]

class Personinfo {
    
    var personArray: [PersonDeatil]?
    
    subscript(name: String) -> String {
        if let personArray {
            for i in personArray {
                if i.name == name {
                    return "Name: \(name), age: \(i.age) and birthdate: \(i.birthdate)"
                }
            }
        }
        return ""
    }
    
}

var personinfo = Personinfo()
personinfo.personArray = personArray
print(personinfo["Darshan"])

// Ans

// Name: Darshan, age: 21 and birthdate: 28/10/2001

// 20.  Create a swift class with properties which can be read-write outside of class.

class PropertiesMutable {
    
    var employeeName: String
    var employeeId: Int
    var employeeDepartment: String
    
    init(_ employeeName: String, _ employeeId: Int, _ employeeDepartment: String) {
        self.employeeName = employeeName
        self.employeeId = employeeId
        self.employeeDepartment = employeeDepartment
    }
    
}

var mutableProperties = PropertiesMutable("Darshan", 17, "Native Mobile")
print(mutableProperties.employeeName)
print(mutableProperties.employeeId)
print(mutableProperties.employeeDepartment)

// Ans

// Darshan
// 17
// Native Mobile

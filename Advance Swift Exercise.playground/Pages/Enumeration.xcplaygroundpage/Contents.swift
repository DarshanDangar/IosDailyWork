//: [Previous](@previous)

import Foundation


//: [Next](@next)

// 1. •    Write swift program using enumerations to check week day from given number. Consider Monday as 1 and Sunday as 7. We can be able to get day name as string in short form (sun, mon,...) and same full name (Sunday, Monday...) by given number of the day.
// Example. It should return Monday or mon if I pass parameter 1 for get day name.

enum WeekDays: Int {
    
    case Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    
    static func getDay(_ number: Int) -> String {
        
        switch WeekDays(rawValue: number) {
        case .Monday:
            return "mon"
        case .Tuesday:
            return "tue"
        case .Wednesday:
            return "wed"
        case .Thursday:
            return "thu"
        case .Friday:
            return "fri"
        case .Saturday:
            return "sat"
        default:
            return "sun"
        }
        
    }
    
}

print(WeekDays.getDay(5))

// Ans

// fri

// 2. Create one enumeration program to return number of days in a month.

enum Months {
    
    case January,Feburary, March, April, May, June, July, Augest, September,October, November,December
    
    var days: Int {
        switch self {
        case .January,.March, .May, .July, .Augest, .October, .December:
            return 31
        case .April,.June, .September, .November:
            return 30
        case .Feburary:
            return 29
        }
    }
    
}

var month = Months.January
print(month.days)

// Ans

// 31

// 3. Write a swift program using enumerations to demonstrate Int enums.

enum DigitInt: Int {
    
    case odd = 1, even
    
}

print(DigitInt.even.rawValue)

// Ans

// 2

// 4. Write a swift program to demonstrate string type enum.

enum NameString: String{
    
    case name = "Darshan Dangar"
    
}

print(NameString.name.rawValue)

// Ans

// Darshan Dangar

// 5. Write a swift program for enum with raw values.

enum Weeks: Int {
    
    case Monday = 1,Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    
}

var day = Weeks.Thursday.rawValue
print(day)

// Ans

// 4

// 6. Write a swift program using enumerations to get all cases as an array with use of CaseIterable(Optional) and without use of CaseIterable(Mandatory).

enum Case: CaseIterable {
    
    case Facebook
    case Google
    case Twiter
    
}

for i in Case.allCases {
    print("caseis: \(i)")
}

// Ans

// caseis: Facebook
// caseis: Google
// caseis: Twiter

// 7. Write a swift program using enumerations for learn and demonsrate enum cases with parameters (Enum with associated values).

enum Student {
    
    case name(String)
    case rollNo(Int)
    case mark(Int,Int, Int, Int, Int)
    
}

var deatils = Student.name("Darshan")
print(deatils)
deatils = .rollNo(17)
deatils = .mark(95, 98, 99, 96, 94)
print(deatils)

// Ans

// name("Darshan")
// mark(95, 98, 99, 96, 94)

enum StudentEnum {
    
    case name(String)
    case rollNo(Int)
    case mark(Int,Int, Int, Int, Int)
    
}

var deatilsEnum = StudentEnum.name("Darshan")
print(deatilsEnum)
deatilsEnum = .rollNo(17)
deatilsEnum = .mark(95, 98, 99, 96, 94)
print(deatilsEnum)

switch deatilsEnum {
    
case let.name(name):
    print("nameis: \(name)")
case let .rollNo(rn):
    print("rollNois: \(rn)")
case .mark(let sub1, let sub2, let sub3, let sub4, let sub5):
    print("submark is: \(sub1), \(sub2), \(sub3), \(sub4), \(sub5)")
    
}

// Ans

// name("Darshan")
// mark(95, 98, 99, 96, 94)
// submark is: 95, 98, 99, 96, 94

// 8. Create an enum with its rawValues of type String and show usage of case to print value of case.

enum StringRawValue: String {
    
    case studentName = "Darshan"
    case studentRno = "17"
    
}

print(StringRawValue.studentName.rawValue)
print(StringRawValue.studentRno.rawValue)

// Ans

// Darshan
// 17



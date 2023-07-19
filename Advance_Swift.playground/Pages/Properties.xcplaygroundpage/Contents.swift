//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//stored properties and computed property

class Property {
    //stored property
    var num1: Int = 0
    var num2: Int = 0
    
    //computed property
    var sum: Int {
        return num1 + num2
    }
}

var objProperty = Property()
objProperty.num1 = 5
objProperty.num2 = 6
var add = objProperty.sum
print(add)

// getter and setter property

class GetSet{
    var num1: Int = 0
    var num2: Int = 0
    
    var sum: Int {
        get {
            num1 + num2
        }
        
        set  {
            //here newvalue is sorted setter decleration
            num1 = newValue + num1
            num2 = newValue + num2
            
        }
    }

}

var addition = GetSet()
addition.num1 = 8
addition.num2 = 10
addition.sum
print(addition.sum)
addition.num1
addition.num2
addition.sum = 5

addition.num1
addition.num2

//read only computed property
struct Calc {
    var sum = 0, sub = 0, mul = 0
    var volume: Int {
        return sum + sub + mul
    }
}
var calc = Calc(sum: 5,sub: 8,mul: 12)
print(calc)
calc.volume

//property observer

class Observer {
    var count: Int = 0 {
        willSet(newv){
            print("new count is : \(newv)")
        }
        didSet{
            //print("new count is coming: \(count)")
            count += oldValue
            print("current count is :\(count)")
        }
    }
}

var count = Observer()
count.count = 200

count.count = 250

//property wrapper

@propertyWrapper
struct Araper {
    var num1: Int = 0
    var wrappedValue: Int {
        get {
            num1
        }
        set {
            num1 = min(newValue, 12)
        }
    }
}

struct UsewrapProprty {
    @Araper var num: Int
    
}
var useproperty = UsewrapProprty()
useproperty.num = 10
//useproperty.
print(useproperty.num)

useproperty.num = 25
print(useproperty.num)

@propertyWrapper
struct Second {
    var num1 = 0
    var wrappedValue: Int {
        get{
            num1
        }
        set{
            num1 = newValue
        }
    }
}

class UseWraper {
    @Second var num: Int
}

var usePropertyInClass = UsewrapProprty()
usePropertyInClass.num = 5
print(usePropertyInClass.num)

@propertyWrapper
class ImplicitValue {
    var num1: Int
    var maximum: Int
    var wrappedValue: Int {
        get
        {
            num1
        }
        set{
            num1 = newValue
           
        }
        
    }
    init(){
        num1 = 0
        maximum = 0
    }
    init(num1: Int){
        self.num1 = num1
        maximum = num1
    }
    init(num1: Int, maximum: Int){
        self.num1 = num1
        self.maximum = maximum
    }
    
}

struct Implicit {
    @ImplicitValue var num: Int
    @ImplicitValue var max: Int
}

var implicitValue = Implicit()
print("\(implicitValue.num) \(implicitValue.max)")
implicitValue.max = 5
print(" \(implicitValue.max)")

@propertyWrapper
class CheckValue {
    var num: Int
    var projectedValue: Bool
    var wrappedValue: Int {
        get{
            return num
        }
        set{
            if newValue > 21{
                num = 21
                projectedValue = true
            }else{
                num = newValue
                projectedValue = false
            }
        }
    }
    init(){
        self.num = 0
        self.projectedValue = false
    }
}

class Testing {
    @CheckValue var num: Int
    init(){
        self.num = num
    }
}

var testing = Testing()
testing.num = 25
print(testing.num)
print(testing.$num)

//type property syntax
//class vs static class allow overrides and static dont allow overrides

class Static {
    static var staticvariable: Int {
        return 5
    }
    class var classVariable: Int {
        return 6
    }
    
}
class Override: Static {
    override class var classVariable: Int{
        return 61
    }
}

//

//class Threshold {
//    static var threshold = 10
//    static var maxLevel = 0
//    var currentLevel: Int {
//        get{
//            self.currentLevel
//        }
//        set{
//            if newValue < Threshold.threshold{
//                self.currentLevel = Threshold.threshold
//            }else if newValue > Threshold.maxLevel {
//                Threshold.maxLevel = self.currentLevel
//
//            }
//        }
//    }
//
//}
//
//
//var setThreshold = Threshold()
//setThreshold.currentLevel = 5
//print(setThreshold.currentLevel)
//print(Threshold.maxLevel)

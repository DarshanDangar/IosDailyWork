//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//closure

//closure without parameter and without return parameter

let sayHello:() -> Void = {
    print("Hello")
}
sayHello()

//closure with parameter with return parameter
let valu:(Int) -> Int = {
    value in
    return value
}
valu(5)

//closure take two parameter with one return parameter

let sum = {
    (value1 : Int,value2 : Int) -> Int  in
    return value1 + value2
}
sum(5,4)

//closure take two parameter and return different type parameter

let addval:(Int,Int) -> String = {
    (val1,val2) in
    return String("Sum is: \(val1 + val2)")
}
addval(8,7)


let birthday = {
    print("Happy Birthday!")
}
birthday()
type(of: birthday)

let birth:(String) -> () = { name in
    print("Happy Birthday, \(name)!")
}
var name = "Darshan"
birth("Shyam")

let bir:(String) -> () = { a in
    print("Happy Birthday \(a)")
}
bir("Darshan")

var bi:(String) -> () = {
    print("Happy Birthday \($0)!")
    //$0 is sorthand is used to reference the value of the first parameter.
}
bi("shubham")

//declare closure with one parameter
let birthda:(String) -> () = {(name:String) -> () in

}
var defreturn:(Int,Int) -> Double = {(width:Int,Height:Int) -> Double in
    return Double(width * Height)
}
print(defreturn(5,4))

let great:(String,String) -> String = {(time:String,name:String) -> String in
    return "Good \(time) \(name)!"
}
var text = great("Morning","Shyam")
print(text)

let grati:(String,String) -> String = { "Good \($0) \($1)"
}
grati("Morning","Darshan")

let birthdaywish = {(name:String) in
    return "Happy Bithday \(name)!"
}
birthdaywish("Shubham")

let firstexample:(String,String) -> Bool = {(s1:String,s2:String) -> Bool in
    if s1.isEmpty && s2.isEmpty {
        return true
    }else{
        return false
    }
}
firstexample("Darshan","Shyam")
firstexample("Darshan","")
firstexample("","")

let names = ["Zaphod", "Slartibartfast", "Trillian", "Ford", "Arthur", "Marvin"]

for i in names{
    print(i)
}

let squared = {$0 * $0}(12)
print(squared)

let cat = names.sorted(by: {s1,s2 in s1<s2})
print(cat)
let sort1 = names.sorted(by: {(s1:String,s2:String) -> Bool in
    return s1 < s2
}
)
print(sort1)
let sort2 = names.sorted(by: {$0 < $1})
print(sort2)

let nam = "Darshan"
let greeting1 = {
    print("Don't panic \(name)!")
}
var t = greeting1()
print(type(of: text))
print(t)


func addScore(points:Int) -> Int{
    let score = 45

    let calculate = {
        return score + points


    }

    var calc = calculate
    print(calc)
    return calculate()

}

let abc = {
    print("Hello")
    return 3456
}

let egffg = abc()

let val = addScore(points: 50)
print(val)

class Database{
    var data = 0
}
let database = Database()
database.data = 11010101

let calculate = {[weak database] multiplier in
    return database!.data * multiplier
}

let resultclass = calculate(2)
print(resultclass)

let nam1 = ["Charis","Darshan","Shyam","Shubham","Krunal"]

let sort3 = nam1.sorted(by: {$0 < $1})
print(sort3)

func someFunctionTHatTakeAClosure(closure: () -> Void){

}

someFunctionTHatTakeAClosure(closure: {

})

someFunctionTHatTakeAClosure() {

}

let digitNames = [
    0:"Zero",1:"One",2:"Two",3:"Three",4:"Four",5:"Five",6:"Six",7:"Seven",8:"Eight",9:"Nine"
]
let numbers = [16,58,510]

//trailing closure

func makeSquareOf(digit: Int,onCompletion:(Int) -> Void){
    let squaredigit = digit * digit
    onCompletion(squaredigit)
}
makeSquareOf(digit: 9) {squaredigit in
    print("Square of 9 is: \(squaredigit)")
}

//autoclosure
var customersInline = ["Darshan","Shyam","Shubham","Krunal"]

func serve(customer customerprovider: @autoclosure () -> String)
{
    print("Now serving \(customerprovider())!")
}
serve(customer: customersInline.remove(at: 2)
//non-escaping closure

func calculate_Sum(array:Array<Int>,performSum:((Int) -> Void)){
    var sum = 0
    for i in array{
        sum += i
    }
    performSum(sum)
}

func calculator(){
    var array = [0,1,2,3,4,5,6,7]
    calculate_Sum(array: array){sum in
        print(sum)
    }
}


//escaping closure

var complitionHandler: ((Int) -> Void)
var sum_calc = 0

func calculate_Sum_f(array:Array<Int>,performSum:@escaping ((Int) -> Void)){
    for i in array{
        sum_calc += i
    }
    complitionHandler = performSum
}

func calculator_f(){
    sum_calc = 0
    var array = [1,2,3,4,5,6,7,8,9]
    calculate_Sum_f(array: array) {sum in
        print(sum)
    }
    
}
calculator_f()
complitionHandler(sum_calc)


//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//function

func sum(a:Int,b:Int) -> Int{
    var c = a + b
    return c
}
var ans = sum(a: 5, b: 6)
print(ans)

func student(name:String) -> String{
    return name
}
print(student(name: "Darshan"))

func stud(name:String){
    print(name)
}
stud(name: "Darshan")

func Std(){
    print("Hello")
}
Std()

func display(no1:Int) -> Float{
    let a = Float(no1)
    return a
}
print(display(no1: 1))
print(display(no1: 2))
print(display(no1: Int(1.1)))

func random() -> Int{
    return Int.random(in: 0...500000)
}
print(random())

func mult(no1:Int,no2:Int) -> Int{
    return no1 * no2
}
print("num is:\(mult(no1: 5, no2: 1))")
print(mult(no1: 5, no2: 2))
print(mult(no1: 15, no2: 3))
print(mult(no1: 50, no2: 50))

func votername() -> Bool{
    return true
}
print(votername())
//print(votername(5))

func ls(array:[Int]) -> (large:Int,small:Int){
    var lar = array[0]
    var sma = array[0]
        for i in array[1..<array.count]{
            if i < sma{
                sma = i
            }else if i > lar{
                lar = i
            }
        }
    return (lar,sma)
    }
var num = ls(array: [5,4,6,2,-50])
print("small number is: \(num.large) and large number is: \(num.small)")

//other

func lsa(array1:[Int]) -> (large:Int,small:Int){
    var lar = array1.max()
    var sma = array1.min()
    return (lar ?? 0, sma ?? 0)
}
print(lsa(array1: [1,2,3,4,8,5,6]))

var xy7 = 5
func sumsub(a:Int , b:Int){
    var d = a + b
    xy7 = 56
    var c = a - b
    print("sum is: \(d),substract is: \(c)")
}
sumsub(a: 5, b: 4)
sumsub(a: 20, b: 30)
sumsub(a: 50, b: 60)
var azs = sumsub(a: 4, b: 5)
print(azs)
print(type(of: azs))

func min(array:[Int]?) -> (min:Int?,max:Int?){
    var max = array?.max()
    var min = array?.min()
    return (min,max)
}
var b = min(array: [1,2,3,4,5])
//print(min(array: [1,2,3,4]))
if let a = b.max{
    print(a)
}else{
    print("not execute")
}
var `if` = "Str"
print(`if`)

func defau(a:Int? = Int("str") ?? 0,b:Int? = 0) -> (a:Int?,b:Int?){
    
    return (a,b)
}
var def = defau(b:5)

if let de = (def.a,def.b) as? (Int,Int){
    print(de)
}else{
    print("no execute")
}

//function local parameter

func arg(name:String) ->String{
    return name
}
print(arg(name: "Darshan"))


func arg(firstnamearg a:String,lastnamearg b:String) -> String{
    return "\(a) \(b)"
}
print(arg(firstnamearg: "Darshan", lastnamearg: "Dangar"))

//func calc{
//    func sum(a:Int = 0,b:Int = 0){
//        return a + b
//    }
//
//}

func argq(name:String) ->String{
    return name
}
print(arg(name: "Darshan"))


func argq(firstnamearg a:String,lastnamearg b:String) -> String{
    return "\(a) \(b)"
}
print(argq(firstnamearg: "Darshan", lastnamearg: "Dangar"))

//variadic parameter

func vari(m:Float...){
    for i in m{
        print(i)
    }
}
vari(m:1,2,3,4,5)

func vari(n:Any...){
    // ... three period character
    for i in n{
        print(i)
    }
}
vari(n: 1,2,3,1.1,"Darshan",5.5)

func vari(mark:Int...,rollno:Int,name:String){
    var sum = 0
    for i in mark{
        sum += i
    }
    var percentage = sum / 6
    print("student name is: \(name)")
    print("student rollno is: \(rollno)")
    print("student's total mark is: \(sum)")
    print("\(name) take \(percentage)% for this year")
}
vari(mark: 90,95,98,99,96,91, rollno: 1, name:"Darshan")


func vari(sem1:Int...,sem2:Int...,sem3:Int...){
    var sum = 0
    for i in sem1{
        sum += i
    }
    print("sem 1 mark total is: \(sum)")
    sum = 0
    for i in sem2{
        sum += i
    }
    print("sem2 mark total is: \(sum)")
    sum = 0
    for i in sem3{
        sum += i
    }
    print("sem3 mark total is: \(sum)")
    
}
vari(sem1: 90,95,96,98,97, sem2: 91,80,85,87,80, sem3: 90,85,80,70,85)

func swap(a:inout Int,b:inout Int){
    let temp = a
    a = b
    b = temp
}
var no = 2
var co = 10

swap(a: &no, b: &co)
print("swap number are \(no) ,\(co)")
print(no)
print(co)

func sumq(a:Int , b:Int) -> Int{
    return a + b
}
var add:(Int,Int) -> Int = sumq
print("result is: \(add(5,4))")

print(sumq(a: 5, b: 4))


func sum1(a:Int,b:Int) -> Int{
    return a + b
}
var addi = sum
type(of: addi)
print("Result: \(addi(5,4))")

func another(addi:(Int,Int) -> Int,a:Int,b:Int){
    print("Result: \(addi(a,b))")
}
another(addi: addi, a: 5, b: 5)


//func fact(a:Int) -> Int{
//
//}

func greetMessage(){
    func DisplayName(){
        print("Good Morning Darshan")
    }
    DisplayName()
}
greetMessage()

func addNum(){
    print("Addition")
    func display(num1:Int,num2:Int){
        print(num1 + num2)
    }
    display(num1: 5, num2: 5)
}
addNum()

func calcDecrement(total:Int) -> () -> Int {
    var overallDecrement = 0
    func decrementer() -> Int {
        overallDecrement -= total
        return overallDecrement
    }
    return decrementer
}
let dec = calcDecrement(total: 10)
print(dec())

func fact(a:Int) -> Int{
    var factl = 1
    for i in stride(from: a, to: 1, by: -1){
        factl *= i
    }
    return factl
}
print(fact(a: 5))

func first(a:Int) -> Int{
    var sum = 0
    func second() -> Int{
        sum += a
        func third() -> Int{
            sum += a
            return sum
        }
        return third()
    }
    return second()
}
print(first(a: 5))

// outer function
func addNumbers() {
  print("Addition")

  // inner function
  func display(num1: Int, num2: Int) {
      print("5 + 10 =", num1 + num2)
  }

  // calling inner function with two values
  display(num1: 5, num2: 10)
}

// calling outer function

func swit(cha:Character?) -> (Int,Int) -> (Int) {
    func sum(a:Int,b:Int) -> Int{
       print("sum is: \(a + b)")
        return a + b
    }
    func sub(a:Int,b:Int) -> Int{
        print("Substract is: \(a - b)")
        return a - b
    }
    func mul(a:Int,b:Int) -> Int{
        print("multiplication is: \(a * b)")
        return a * b
    }
    func div(a:Int,b:Int) -> Int{
        print("Division is: \(a / b)")
        return a / b
    }
    switch cha{
    case "+":
        return sum
    case "-":
        return sub
    case "*":
        return mul
    case "/":
        return div
    default:
        return sum
    }

}
let gfj = swit(cha: "-")
var result = gfj(5,4)
print(result)

func fact1(a:Int) -> Int{
    
    if a == 0{
        return 1
    }else{
        return a * fact1(a: a - 1)
    }
}
print("factorial 5 is: \(fact(a: 5))")

//generic function
// T is generic type parameter
func generic<T>(a:T) -> T {
    return a
}
print(generic(a: 5))
print(generic(a: "Darshan"))
print(generic(a: 5.5))
print(generic(a: true))
print(generic(a: [1,2,3,4,5]))
print(generic(a: [1:"Darshan",21:"Shyam"]))

func abc(a:Int,b:String) -> (Int,String){
    return (a,b)
}
var bdf = abc(a: 5, b: "Darshan")
print(bdf)
type(of: bdf)
bdf.0
bdf.1

let assd = bdf.0
let adss = bdf.1




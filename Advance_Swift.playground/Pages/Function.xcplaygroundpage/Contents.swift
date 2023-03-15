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

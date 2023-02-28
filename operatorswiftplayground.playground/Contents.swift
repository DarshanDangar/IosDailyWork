import UIKit

var greeting = "Hello, playground"
//Assignment  Operator
var h = 2
var (q,w) = (10,20)
    
/*if q == w {
    print("sucess")
}else{
    print("not sucess")
}*/

//Arithmatic operator
var e = 10+20
var r = 10*20
var t = 20-10
var u = 20/10


//Reminder operator (modulo %)

var i = 9 % 2

//Compound Assignment Operator
var s = 10
s += 20
//here s = s + 20

//Comperasion operator
//1.equalto (==)
var cv = 10
var vc = 20
var cvc = 10
if cv == cvc{
    print("Your value is match")
}else{
    print("Your value is not match")
}

//2.not equalto(!=)
if cv != cvc{
    print("Your value is match")
}else{
    print("Your value is not match")
}

//3.greaterthan(>)
if vc > cv{
    print("Your value is match")
}else{
    print("Your value is not match")
}

//4.lessthan(<)
if vc < cv{
    print("your vc value is smaller than cv")
}else{
    print("your vc value is not smaller than cv")
}

//5.greatherthan or equalto (>=)
if cv >= cvc{
    print("Your cv and cvc value is equall otherwise cv is bigger than cvc")
}else{
    print("value is not equal")
}

//6.lessthan or equalto(<=)
if cv <= vc{
    print("Your cv and cvc value is equall otherwise cv is smaller than vc")
}else{
    print("value is not equal")
}

//ternary Condition Operator (a?y:n)
var hash = false
var cash = hash ? 10 : 20
print(cash)
cash = !hash ? 10 : 20
print(cash)
// if condition true then get first value (y) otherwise get second value(n)

//Range Operator
//1.close range operator
//that means between the given ranse use this type operator include 1 and 10

for table5 in 1...10{
    print("5 multiplies \(table5) = \(table5*5)")
}

//2.Half open range operator
// this type of opertor use use length,not given final value and then find some value between range

var arr = ["Darshan","Shubham","Shyam","Krunal"]
var con = arr.count
for inn in 0..<con{
    print("Person \(inn+1) name is \(arr[inn])")
}

//3.one sided range

//index 2 and after all index
for i in arr[2...]{
    print(i)
}
//index 0 to 2
for i in arr[...2]{
    print(i)
}

//o to lesthen 2 not include 2
for i in arr[..<2]{
    print(i)
}
//particular array show in index
print(arr[0])

//logical not operator
//this operator change result value like if value is true and get answer false

var ff = false
if !ff{
    print("sucess")
}

//logical and operator

var fy = true
var fd = true
var xy = false
if fy && fd && xy{
    print("sucess")
}else{
    print("Fail")
}

//logical or operator

if fy || xy || fd{
    print("Sucess")
}

//combining operator

if (fy&&xy) || xy{
    print("Sucess")
}else{
    print("Fail")
}

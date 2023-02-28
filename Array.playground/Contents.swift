import UIKit

var greeting = "Hello, playground"
//Array in swift
//null array create
var arr1: [Int] = []
print("arr has \(arr1.count) iteams")

var arr2 = Array(repeating: 3, count: 3)
print(arr2)
var arr3 = Array(repeating: 5, count: 3)
print(arr3)
var arr4 = arr3 + arr2
print(arr4)

var arr5 = ["Milk", "Vegetable"]
print("arr5 has \(arr5.count) iteams")
print(arr5)

if arr5.isEmpty{
    print("arr5 is empty")
}else{
    print("arr5 is not empty")
}

arr5.append("Fruits")
print(arr5)

arr5 += ["Butter"]
arr5 += ["Apple", "Banana", "Guavava"]
print(arr5)

print(arr5[1])

for i in arr5.indices{
    print("arr5[\(i)] is \(arr5[i]) on this array")
}

arr5.removeLast()
print(arr5)

//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//error handling

//var number = 10
//var deminator = 0
//
//var result = number / deminator
//generate error


//step1: create enum for error

enum DivisionError: Error {
    case dividedbyZero
}

func division(number: Int, deminator: Int) throws {
    if deminator == 0 {
        throw DivisionError.dividedbyZero
    }else {
        let result = number / deminator
        print(result)
    }
}
do{
    try division(number: 10, deminator: 0)
    print("Valid Divisioble")
}
catch DivisionError.dividedbyZero {
    print("Error: Deminator cannot be 0")
}

//Disable Error handling

//try? division(number: 10, deminator: 2)

//enum VendingMachineError: Error {
//    case invalidSelection
//    case insufficientFunds(coinsNeeded: Int)
//    case outofstock
//}
//
//throw VendingMachineError.insufficientFunds(coinsNeeded: 5)
//
//var vendingMachine = VendingMachineError()

//converting error to optional values

enum OptionalEnum {
    case optional
}

//func someThrowingFunction() throws -> Int {
//    return
//}

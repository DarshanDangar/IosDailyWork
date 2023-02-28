import UIKit

var greeting = "Hello, playground"
print(greeting)
let explicitFloat : Float = 4
print(explicitFloat)
let label = "The Width is :"
let width = 94
let widthlabel = label+" "+String(width)
print(widthlabel)
let apples : Float = 3
let oranges : Float = 5
let appleSummary = "I have \(apples) apples."
print(appleSummary)
let fruitSummary = "I have \(apples + oranges) pices of fruit."
print(fruitSummary)
let multipleLine = """
    I said "I have \(apples) apples." and then I said
    "I have \(apples + oranges) pieces of fruits."
    """

print(multipleLine)
//let test : String = 5
//not allow other type value
let test : String = String(5)
//this is possible because typecasting is possible
print("Hello")
print("World")
//let int : Int8 = int.max + 1
let twoThousands : UInt16 = 2_000
let one : UInt8 = 1
let twothoundsandOne = twoThousands + UInt16(one)
print(twothoundsandOne)
let three = 3
let pointonefourninefive = 0.14159
let sum = Double(three)+pointonefourninefive
print(sum)

let final = false
let semiFinal = false

if final{
    print("Final successfuloly")
} else{
    print("Final not Successfully")
}
let num = "15"
let posiblenum = Int(num)
print(num)
var code: Int?

print(code ?? 1)
//?? explicit cast warning remove
code = 2
print(code!)
var num1 : String?
print(num1 ?? "not null")
var dhar: String = "Hello"
var dar: String = "hello"
if dhar == dar{
    print("dhar and dar are equals")
}else{
    print("dhar and dar not equals")
}
//print(1...5)

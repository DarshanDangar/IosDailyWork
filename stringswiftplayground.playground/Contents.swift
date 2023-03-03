import UIKit

var greeting = "Hello, playground"
var stri = "Hello, How are you"
//"# namste #"
print(stri)

//let threeDoubleQuotationMarks = """
//Escaping the first quotation mark \"""
//Escaping all three quotation marks \"\"\"
//"""

//let threeMoreDoubleQuotationMarks = #"""
//Here are three more double quotes: """
//"""#
//print(thre)


//string is empty or not
stri = "s"
print(stri)
if stri.isEmpty{
    print("String is empty")
}else
{
    print("string is not empty")
}

// const string not change only change assign variable string

stri = "Hello how are you"
for i in stri{
    print(i)
}

//print(#"6 times 7 is \#(6*7)."#)
//print(#"6 times 7 is \#(6 * 7)."#)

//string index part
var cn = stri.count
print(cn)
//show oth index character
stri[stri.startIndex]

//index outside of string range then generate run time error
var strin = "Hello How was the day"
strin[strin.index(after: strin.startIndex)]
strin[strin.index(stri.startIndex, offsetBy: 6)]
//strin[strin.index(stri.)]

//indices property to access all of the indices of indivisual character in a string

for i in strin.indices{
    print(type(of: i))
    print(strin[i])
    //print(i, terminator: "")
}

//inserting and removing single character

strin.insert(contentsOf: stri, at: strin.endIndex)
strin.remove(at: strin.index(before: strin.endIndex))
strin.removeLast()

//strin.ranges(of: "was")

//var range = strin.index(strin.startIndex, offsetBy: 3)..<strin.endIndex

//strin.removeSubrange(range)

var stringrange = "swift is pogramming language"

//var range = stringrange.index(stringrange.endIndex,offsetBy: -8)..<stringrange.endIndex
//stringrange.removeSubrange(range)

//var range = stringrange.index(stringrange.index(after: stringrange.startIndex),offsetBy: 5)..<stringrange.endIndex
//stringrange.removeSubrange(range)

//var range = stringrange.index(stringrange.startIndex, offsetBy: 8, limitedBy: stringrange.index( stringrange.endIndex,offsetBy: -11))
//stringrange.remove(at: range)

//substring

var greating = "Hello, swift"
var ind = greating.firstIndex(of: "o") ?? greating.endIndex
let sec = greating[..<ind]

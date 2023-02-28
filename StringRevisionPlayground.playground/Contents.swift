import UIKit

var greeting = "Hello, playground"
var char: [Character] = ["a", "b", "c"]
var stringer = ""
for i in char{
    stringer.append(i)
}
print(stringer)

print(stringer.append(contentsOf: char))

var string12 = ""
var string13 = String()

if string12.count == 0{
    print("String is empty")
}
if string12 == String(){
    print("String is Empty")
}
if string12 == ""{
    print("String is Empty")
}
if string12.isEmpty {
    print("String is Empty")
}

var str123 = "Hello,My Name is Darshan"

let Quation = """
\nhello,I am Darshan Dangar. \
from Rajkot.

"I am student of Computer Engineering"
"""

var str134 = str123 + " " + Quation
print(str134)

let threeMoreDoubleQuation = #"""
Here are 🐶there more double Quation
"""#

print(threeMoreDoubleQuation)

str134 += threeMoreDoubleQuation
print(str134)

var str21 = "Horse"
//str21 += " Ashw"
print(str21)

let str22 = "Horse"
//str22 += " Ashw"
print(str22)


for character21 in "Dog!🐶"{
    print(character21)
}

for character21 in "Dog"{
    print(character21)
}

var catChara: [Character] = ["C", "A", "T", "!", "🐱"]
var stringChara = String(catChara)
print(stringChara)
print(stringChara.lowercased())

str21 += stringChara
print(str21)

str21.append("!")
print(str21)

let badstart = """
one
two
"""

let end = """
there
"""

print(badstart + end)

let goodStart = """
one
two

"""

print(goodStart + end)


let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(message)
print(#"Write an interpolated string in swift using \(multiplier)."#)

var stringcount = "Horse 🐴, Snake 🐍, Cow 🐄, Dog 🐶"
print("stringcount all character is \(stringcount.count)")
 stringcount += "\u{301}" //acute acent character add
//aaa other character add karvi to count ma ferfar no thay
print("stringcount all character is \(stringcount.count)")


//modify string

var grat = "Darshan"

print(grat.startIndex)
print(grat[grat.startIndex])
print(grat[grat.index(after: grat.startIndex)])
print(grat[grat.index(grat.startIndex, offsetBy: 2)])
print(grat[grat.index(grat.startIndex, offsetBy: 3)])
//print(grat[grat.index(grat.startIndex, offsetBy: 4, limitedBy: grat.endIndex)])
print(grat[grat.index(grat.startIndex, offsetBy: 4)])
print(grat[grat.index(grat.startIndex, offsetBy: 5)])
print(grat[grat.index(grat.startIndex, offsetBy: 6)])

for i in grat{
   print(i)
}

for i in grat.indices{
    print("\(grat[i]) ", terminator: "")
}

grat.insert("!", at: grat.endIndex)
print(grat)

grat.insert(contentsOf: " Dangar", at: grat.endIndex)
print(grat)

grat.remove(at: grat.index(grat.startIndex, offsetBy: 7))
print(grat)

grat.removeLast()
print(grat)
grat.removeLast(5)
print(grat)
grat.removeFirst(5)
print(grat)

//grat.removeAll()
//print(grat)

//grat += "D"
//print(grat)
grat = "Darshan"

let range = grat.index(grat.endIndex, offsetBy: -5)..<grat.endIndex
grat.removeSubrange(range)
print(grat)

grat = "Darshan"
let range1 = grat.index(grat.startIndex,offsetBy: 2)..<grat.endIndex
grat.removeSubrange(range1)
print(grat)


grat = "Darshan"
var iatest1 = grat.firstIndex(of: "h") ?? grat.endIndex
var new = grat[..<iatest1]
print(new)

if grat == new {
    print("Strings are equal")
}else{
    print("Strings are not equal")
}


let latinCapitalLetterA: Character = "\u{41}"

let cyrillicCapitalLetterA: Character = "\u{041}"

if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters aren't equivalent.")
}else{
    print("These two characters are equal")
}

let romeo = ["Act 1 Scene 1: This is public place",
"Act 1 Scene 2: This is important Mission",
"Act 1 Scene 3: This is Very Important",
"Act 2 Scene 1: This is A Horse",
"Act 2 Scene 2: This is A Cow",
"Act 2 Scene 3: This is A Dog",
"Act 2 Scene 4: This is An Elephant"]

var act1scenezcount = 0
for scene in romeo{
    if scene.hasPrefix("Act 1 "){
        act1scenezcount += 1
    }
}
print("There are \(act1scenezcount) scene in Act 1")

//dictionary

//var someDict = [key:Value] ()
var someDict1 = [Int:String] ()
//var someDict2 = [:]
var someDict3: [Int:String] = [:]

//print(someDict.count)
print(someDict1.count)
//print(someDict2.count)
print(someDict3.count)

var dictsome:[Int:String] = [1:"Darshan", 2:"Shubham" ,3:"Shyam"]
var somedictnew = dictsome
print("New Dictionary is \(somedictnew)")

print(somedictnew.count)
somedictnew.removeValue(forKey: 3)
print(somedictnew)

var newcretDict = [5:"Krunal"]

somedictnew.merge(newcretDict){(current, _) in current}
print(somedictnew)
print(newcretDict)

//somedictnew.merging(newcretDict, uniquingKeysWith: Int)

str = "darshan"
//first character capital
print(str.capitalized)

str = "Darshan \"Dangar\" "
print(str)

var str4 = "    gg    gd  hf    "
str4.trimmingCharacters(in: .whitespaces)
print(str4)
print(str4.trimmingCharacters(in: .whitespaces))

var str5 = str4.replacingOccurrences(of: " " , with: "")
print(str5)

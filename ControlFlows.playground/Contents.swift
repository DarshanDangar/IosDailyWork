import UIKit

var greeting = "Hello, playground"
//control flows

//for loop

var numbersofleg = ["cow":4,"ant":6,"spider":8]
for (animals,legs) in numbersofleg{
    print("\(animals) has \(legs) legs")
}

let base = 3
var power = 5
var answer = 1
for i in 1...power{
    answer *= base
}
print(answer)
//stride use to skip some target
var minuteInterval = 5
var minutes = 60
for tick in stride(from: 0, to: minutes, by: minuteInterval){
    print(tick)
}

var hour = 12
var hourInterval = 3
for track in stride(from: 3, through: hour, by: hourInterval){
    print(track)
}
//var b: String?
//guard let a = b else {
    
//}

let ch:Character = "c"
switch ch{
case "a":
    print("The first letter of the alphabet")
case "b":
    print("The second letter of the alphabet")
case "c":
    print("The third character of the alphabet")
default:
    print("default case")
}

let xaxis = (2,2)
switch xaxis {
case (0,let y):
    print("your y axis is \(y) on graph")
case (let x,0):
    print("your x axix is \(x) on graph")
case let (x,y):
    print("your x axis is \(x) and y axis is \(y) on graph")
//default:
  //  print("Default graph")
}

var chara = "f"
switch chara{
case "a","e","i","o","u":
    print("\(chara) is vowel character")
case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z":
    print("\(chara) is constant character")
default:
    print("default case")
}

var inputstr = "hello how are you"
var outputstr = ""
var inputextra: [Character] = ["a" ,"e" ,"i" ,"o" ,"u" ," "]

for cha in inputstr{
    if inputextra.contains(cha){
        continue
    }
    outputstr.append(cha)
}
print(outputstr)

if #available(macOS 16, *){
    print("yes it's available")
}else{
    print("no it's not available")
}



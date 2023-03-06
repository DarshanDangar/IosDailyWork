import UIKit

var greeting = "Hello, playground"
/dictionary

//create empty dictionary
var dict : [Int:String] = [:]
var dict1: [Double:String] = [:]
//add key and value in dictionary
dict[10] = "ten"
print(dict)
dict1[11.0] = "eleven"
print(dict1)

//count dictionary iteams
var dict2 : [String:String] = ["In":"India", "DUB":"Dubai", "AUS":"Austreliya"]
print(dict2)
print("the total airpoert \(dict2.count) in dictionary")

//check dictionary is not empty
if dict2.isEmpty {
    print("Dictionary is empty")
}else{
    print("Dictionary have multiple airport like \(dict2.values)")
}
//add key and value in dictionary
dict2["LHR"] = "London"
print(dict2.values)

//update any particular value using key
dict2.updateValue("London Air", forKey: "LHR")
print(dict2.values)

dict2["LHR"] = "London Air"
//dict2["LHR"] = nil
print(dict2.values)

for (airportcode,airportname) in dict2{
    //print("Airport code is:\(airportcode) and Airport name for it's code:\(airportname)")
    print("Airportcode:\(airportcode) and Airportname:\(airportname)")
    
    
}

for airportcode in dict2.keys{
    print("Airport code is : \(airportcode)")
}

for airportname in dict2.values{
    print("Airport name is:\(airportname)")
}

//for set
//create a empty set
var leter = Set<Character>()


leter.insert("D")
print(leter)

//creating a set with array literal

var favset: Set<String> = ["Darshan", "Shubham", "Shyam"]
print(favset)

//count set iteam
print("favset has \(favset.count) iteams")

//check set is empty or not
if favset.isEmpty{
    print("favset is Empty")
}else{
    print("favset set is not empty and its iteam is \(favset)")
}
//insert and remove in set
favset.insert("Krunal")
print(favset)
favset.remove("Krunal")
print(favset)

//contains any value in set
if favset.contains("Darshan2"){
    print("yes set is contains value")
}else{
    print("set doesnt contains values")
}
//sorted set
print(favset.sorted())

//performing set operation

let odddigit: Set = [1,3,5,7,9]
let evendigit: Set = [0,2,4,6,8]
let sigledigitprimenum: Set = [2,3,5,7]

//union means all in one group
var av = odddigit.union(evendigit)
print(av)
print(av.sorted())

//intersection means both group common part
var ab = odddigit.intersection(sigledigitprimenum)
print(ab)

//symmetricdifference means different both value not add same value for both group
var an = odddigit.symmetricDifference(sigledigitprimenum)
print(an.sorted())

//subtracking means first group valus contain but same value not contain

var am = odddigit.subtracting(sigledigitprimenum)
print(am.sorted())

//optional binding

var strop: Int? = 10
if let nam1 = strop ,nam1 > 8{
    print(nam1)
    print("strop is greater than 8")
}

var strop1: Int? = 12
func greet(person: [String: String]){
    guard let nam2 = strop1 , nam2 > 80 else {
        print("no execution")
        return
        //print("guard is not initialize")
    }
}
greet(person: ["name": "john"])

func sum(var a:Int ,var b:Int) -> Int{
    return (a + b)
}
print("Sum answer is \(sum(var: 2, var: 3))")
let http = (code: 404, msg: "Not Found")
print(http)

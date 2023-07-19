//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//set
//set is collection type che struct mathi define thay che

//create empty set
var emptyset = Set<Int>()

var set1 = Set<Character>()
var set2 = Set<Int>()
var set3 = Set<Double>()
var set4 = Set<Bool>()
var set5 = Set<String>()
//var set6 = Set<[]>()
//var set7 = Set<[:]>()

var studentid:Set = [1,2,3,4,5]
print(studentid)
print(studentid)
var studid:Set<Int> = [1,2,3,4,5]
print(studid)

studentid.insert(6)
print(studentid)
studentid.count
studentid.remove(5)
print(studentid)
studentid.capacity
studid.removeAll()
studid.capacity
studentid.remove(at: studentid.startIndex)
studentid.removeFirst()
studentid.sorted()
print(studentid)
studentid.forEach({i in
    print(i)
})
studentid.contains(5)
studentid.randomElement()
studentid.first
studentid.firstIndex(of: 1)
for i in studentid{
    print(i)
}
//union of two set
//combine two set

var seta:Set = [1,3,5,7,9]
var setb:Set = [2,4,6,8]
var arrc = [1,3,5,5,7,9]
setb.formUnion(arrc)
setb.contains(3)
//setb.union(seta)
var setc = seta.union(setb)
print(seta)
print(setb)
print(setc)
var setd:Set = seta.intersection(setb)
//intersection means both sets same value
print(setd)

var sete:Set = seta.subtracting(setb)
//subtracting means a ane b ma a nu jetlu common hoy etlu nikli jay bakinu a nu vadhe
print(sete)

var setf:Set? = [1,5,2,6,8]
print(seta.subtracting(setf!))

//symetric difference between two set
// bey set mathi jetlu common hoy etlu nikli jay bbakinu rey (bey nu combine thay common remove thay jay)

var setg:Set = seta.symmetricDifference(setf!)
print(setg)

//subset

print(seta.isSubset(of: setf!))
var seth:Set <Bool> = [seta.isSubset(of: setf!)]
print(seth)


if seta == setb{
    print("Both set are equal")
}else{
    print("Both sets are not equal")

}

var sto = Set<String>()
sto.insert("Darshan")
sto.insert("Shubham")
sto.insert("Shyam")

//var difset:Set<Any> = [1,2,3,"Darshan",1.0]
//print(difset)

print(sto)
sto.count
sto.isEmpty
sto.reversed()
sto.removeFirst()
sto.popFirst()
sto.insert("DD")
sto.insert("FF")
print(sto.dropLast())
sto.contains("DD")


var sdf:Set = [2,1,3,5]
var fds:Set = [sdf.sorted()]
sdf.update(with: 6)
print(sdf)

sdf[sdf.index(sdf.startIndex, offsetBy: 1)]
sdf.max()
sdf.min()
sdf.shuffled()
sdf.contains(5)
sdf.update(with: 1)

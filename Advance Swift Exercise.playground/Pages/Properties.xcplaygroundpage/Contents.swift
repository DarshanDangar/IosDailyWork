//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// 1.   1) Create an example using swift to demonstrate use of get only properties. Create a class with a property which value cannot be set outside of class.
//Output: for example, your class Demo has one property of string type then you can be able to set it within a class. If I try set it outside of class it must give an error.

class GetOnlyProperty {
    
    private var name: String
    var deatil: String {
        get{
            return name
        }
    }
    
    init(deatil: String){
        name = deatil
    }
    
}

var nam = GetOnlyProperty(deatil: "Darshan")
print(nam.deatil)

// Ans

//nam.deatil = "Darshan Dangar"
//error: cannot assign to property: 'deatil' is a get-only property

// 2.  Create a swift program to demonstrate usage of computed properties using getter and setter.

class Transport {
    
    var name: String = ""
    var root: String = ""
    var about: String = ""
    var deatils: String {
        get{
            return about
        }
        set {
            about = "\(name): \(root)"
        }
    }
    
    init(name: String, root: String) {
        self.name = name
        self.root = root
    }
    
}

var truck = Transport(name: "Dangar Transport", root: "Rajkot - Ahmedabad")
truck.deatils = "aadfds"
print(truck.about)

// Ans

// Dangar Transport: Rajkot - Ahmedabad

// 3.  Create a swift program to show usage of stored properties.

class Cricket {
    
    var numberOfPlayer: Int = 0
    var stadiumName: String = "Vankhede"
    
    init( _ numberOfPlayer: Int, _ stadiumName: String) {
        self.numberOfPlayer = numberOfPlayer
        self.stadiumName = stadiumName
    }
    
}

var cricket = Cricket(11, "Narendra Modi Stadium Ahmedabad")
print(cricket.numberOfPlayer)
print(cricket.stadiumName)

// Ans

// 11
// Narendra Modi Stadium Ahmedabad

//4. Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it.


class Data {
    
    private var data: String = "x"
    var aboutData: String {
        get {
            return data
        }
        set {
            data = newValue
        }
    }
    
}

var data = Data()
data.aboutData = "MobiileData"
print(data.aboutData)

// Ans

// MobiileData

//5.  Create one swift class which have two properties name and id, the class must have one initializer to set that properties. And create one array of that class types.

class Person {
    var name: String
    var id: Int
    
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
    
}

var person = Person(name: "Darshan", id: 17)
print(person.name)
print(person.id)

// Ans

// Darshan
// 17

var secondPerson = Person(name: "Shyam", id: 25)
print(secondPerson.name)
print(secondPerson.id)

// Ans

// Shyam
// 25

var thirdPerson = Person(name: "Shubham", id: 02)
print(thirdPerson.name)
print(thirdPerson.id)

// Ans

// Shubham
// 2

var infoOfPerson = [person, secondPerson, thirdPerson]

for i in infoOfPerson {
    print("person name is: \(i.name) and person id is: \(i.id)")
}

// Ans

// person name is: Darshan and person id is: 17
// person name is: Shyam and person id is: 25
// person name is: Shubham and person id is: 2

//6.  Create one example of usage of willSet and didSet.

class Observer {
    
    var count = 0 {
        willSet(newVal) {
            print("Will set uses")
        }
        didSet {
            count += oldValue
            print("did set uses")
        }
    }
    
}

var observer = Observer()
observer.count = 50
print(observer.count)

// Ans

// Will set uses
// did set uses
// 50

// 7.   Create one lazy stored property in a class and show usage of it.

class LazyStored {
    
    var hasDone: String
    lazy var done: String = {
        return "complete work"
    }()
    
    init(hasDone: String) {
        self.hasDone = hasDone
    }
    
}

var lazyStored = LazyStored(hasDone: "Done")
lazyStored.done
print(lazyStored.done)

// Ans

// complete work

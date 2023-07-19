//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//Methods

var countinc = 0

func increment() {
    countinc += 1
}
increment()


class Method {
    func increment() {
        countinc += 1
    }
}

var m1 = Method()
m1.increment()
print(countinc)

var m2 = Method()
m2.increment()
print(countinc)


struct Modify {
    var x = 0
    var y = 0
    
    mutating func change(a: Int,b: Int) {
        x = a
        y = b
    }
    
    
   
}

var modify = Modify()
modify.change(a: 5, b: 4)
print(modify)
modify.change(a: 4, b: 5)
print(modify)

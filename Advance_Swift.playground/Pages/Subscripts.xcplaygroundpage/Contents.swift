//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//subscripts
//var sub = 0
//subscript(i: Int) -> Int {
//    get{
//        return i
//    }
//    set(newValue) {
//        sub = newValue
//    }
//}

struct Table {
    var index: Int

    subscript (i: Int,j: Int, k: Int) -> (Int,Int,Int) {
        return (index * i, index * j, index * k)
    }
}

var table = Table(index: 5)
//table[5]
table[5,6,7]

//

class Subscript{
    var arr = [1,2,3,4,5]
    subscript(i: Int) -> Void {
       
        arr[i] = 5
      
        
    }
}
var useSubscript = Subscript()
useSubscript[1]
print(useSubscript[1])
print(useSubscript.arr)

//type subscript

class SubScript {
    var oldValue = 0
    
    static subscript(i: Int) -> Void {
        print("sub")
        return
    }
}

var staticsubscript = SubScript()
SubScript[1]

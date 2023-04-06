//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
struct X {
    var f: Int
    
}

//x(f:nil)
var t = X(f: 5)
type(of: t)

struct A {
    var a: Int = 7
//    init() {
//        a = 6
//
//    }
}
var aa = A(a:7)
print(aa.a)

//without using init

//struct A {
//    var a: Int
////    init() {
////        a = 5
////
////    }
//}
//var aa = A(a: 5)
//print(aa.a)

class Q {
    var a: Int
    init(){
        a = 5
    }
}

var q = Q()
print(q.a)

//class Q {
//    var a: Int = 5
////    init(){
////        a = 5
////    }
//}
//
//var q = Q()
//type(of: q)
//print(q.a)

//customizes initializations

struct Ad {
    var a: Int
    init(b: Int){
        a = b
        print("a is assign value :\(a)")
    }
}
Ad(b: 5)

class Dsa {
    var t: Double
    init(h: Double) {
        t = h
        print("t is assigned and its value is: \(t)")
    }
    init(p: Double) {
        t = p + 5
        print(t)
    }
}
Dsa(h: 5)
Dsa(p: 6)

struct Da {
    var v: Int = 0 ,b: Int,n: Double
    init(v: Int, b: Int, n: Double) {
        self.v = v
        self.b = b
        self.n = n
    }
    init(b: Int, n: Double) {
        self.b = b
        self.n = n
    }
    
}

//print(Da().v)
var x = Da(b: 5, n: 6)
print(x)
type(of: x)
print()

 var y = Da.init(b: 5, n: 4)
print(y.b)

// initializer without parameter
//used _ (unnamed parameter)
struct Fd {
    var t: String
    init(_ t: String) {
        self.t = t
        print(t)
    }
}
Fd("Darshan")

//optional property types

class Fgh {
    var gh: Int
    var fgh: Double?
    init(gh: Int) {
        self.gh = gh
        print(gh)
    }
}
Fgh(gh: 56)

class Nhj {
    var gh: Int
    var fgh: Double?
    init(gh: Int) {
        self.gh = gh
    }
    func uy(){
        print(gh)
    }
}
Nhj(gh: 5).uy()

struct Hjk {
    var x = 5, z = 5
}
Hjk(x: 25, z: 58)
//var ty =
print(Hjk(x: 8,z: 8))

// initialization delegation for value type

struct Klm {
    var a = 0
    var p = 0
}

struct Lmn {
    var q = 0,r = 0
}

struct KKj {
    var df: Klm
    var gh: Lmn
//    init(df: Klm, gh: Lmn) {
//        self.df = df
//        self.gh = gh
//    }
}
var bh = (KKj(df: Klm(a: 5, p: 8), gh: Lmn(q: 10,r: 65)).df.p)

//class Ds {
//    var a: Int, b: Int
//    init(a:Int, b: Int) {
//        self.a = a
//        self.b = b
//    }
//    convenience init(a: Int){
//
//        self.init(a: a, b: 5)
//        self.a = a
//
//
//    }
//}

//convenience initialization
class Ghj {
    var u: Int
    var v: Double
    var z: Int?
    init(u: Int,v: Double) {
        self.u = u
        self.v = v
        
    }
    convenience init(z: Int) {
        self.init(u: 0, v: 0)
        self.z = z
    }
}

Ghj(z: 5)


//Designated and convenience initializers in action

class Op {
    var op: Int
    init(op: Int){
        self.op = op
        print("op is used in init method")
    }
    convenience init(){
        self.init(op: 8)
        print("op is used in convenience method")
    }
}

Op(op: 5)
Op()

//class Food {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//    convenience init() {
//        self.init(name: "[Unnamed]")
//    }
//}
//
//let namedMeat = Food(name: "Bacon")
//
//class RecipeIngredient: Food {
//    var quantity: Int
//    init(name: String, quantity: Int) {
//        self.quantity = quantity
//        super.init(name: name)
//    }
//    override convenience init(name: String) {
//        self.init(name: name, quantity: 1)
//    }
//}


//failable initialization

struct Fghj {
    var jk: Int
    init?(jk: Int){
//        if jk.words.isEmpty {
//            return nil
//        }
        self.jk = jk
        print(jk)
    }
}
Fghj(jk: 5)

//failable initialization for enumeration

enum ram {
    case a,b,c
    init?(symbol: Character){
        switch symbol{
        case "A":
            self = .a
            print("A is called")
        case "B":
            self = .b
            print("B is called")
        case "C":
            self = .c
            print("C is called")
        default:
            return nil
        }
    }
}

var ghj = ram(symbol: "A")
ram(symbol: "0")

//required initializer
class Op1 {
    var op: Int
    required init(op: Int){
        self.op = op
        print("op is used in init method")
    }
}

class Op2 : Op1 {
    
}

//de initialization

class Yui {
    var ghl: Int
    init(ghl: Int){
        self.ghl = ghl
        print("initialized ghl \(ghl)")
    }
    deinit
    {
        print("memopry deallocated")
    }
}

var res: Yui? = Yui(ghl: 5)
res = nil



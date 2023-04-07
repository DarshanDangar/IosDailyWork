import UIKit

var greeting = "Hello, playground"

// struct Day {
//     static func name() {
//         print("Xyz")
//     }
//}
//Day.name()
//
//
//var a = 5
//var b = 6
//
//var t = (a,b)
//(a,b) = (b,a)
//
//print(a)
//print(b)
//
private class Addd{
    fileprivate class Factory {
        var fect: String = ""
    }
}

private class Fact: Addd {
    var fac = 0
}

private var fact = Fact()
fact.fac





//enum Login: CaseIterable {
//    static var allCases: [Login] {}
//
//    case facebbok(Int)
//    case Twiter(String)
//    case instagram
//}



protocol ProductMobile: AnyObject {
    func wasDone()
}

class Mobile: ProductMobile {
    func wasDone() {
        print("Mobile is complete done")
    }
}

class Compney {
    weak var delegate: ProductMobile?
    func isMade() {
        delegate?.wasDone()
    }
}

var mobile = Mobile()
var comp = Compney()

comp.delegate = mobile
comp.delegate?.wasDone()

var arr = [1,2,3,4,5,6,7,8,9]

//arr.insert(10, at: 20)

struct Static {
    static var d = 5
}

var stic = Static.d
var stati = stic
Static.d
var d = Static.d

enum EnumCase {
    case fac
    case goog
}

//func doSomething() throws {
//    if a != nil {
//        print(a)
//    }
//
//}

var a = 5
assert(a < 6, "This is passed")

//error generate because class must not initializers

//class Demo {
//    let demo: String
//    var dem = "Darshan"
//    if dem.isEmpty {
//        print("Demo is not empty")
//    } else {
//        print("Demo is empty")
//    }
//
//}

var arrArray = [1,2,3,4,5,6,3]

for i in arrArray[2...a] {
    print(i)
}

arrArray.firstIndex(of: 3)
arrArray.startIndex
arrArray.insert(10, at: 5)
arrArray.index(5, offsetBy: 2)
arrArray.index(after: 5)
arrArray.customMirror
arrArray.description
arrArray.first
print(arrArray.map({$0 > 5}))
arrArray.split(separator: 5 , maxSplits: 5)
arrArray.contains(5)
arrArray.enumerated()
arrArray.indices
arrArray.last

var artArray = Array(repeating: 0, count: 13)
arrArray.append(contentsOf: artArray)
arrArray.insert(50, at: 20)

var setI: Set<Int> = [2,4,6]
setI.description
setI.insert(5)
print(setI)

var setII: Set<Int> = [1,2,3,4,5,6]
setII.isStrictSubset(of: setI)
setII.isSubset(of: setI)


//function

func nameOfArray(name: String...) {
    for i in name{
        print(i)
    }
}

nameOfArray(name: "Darshan", "Shyam", "Shubham", "HJU")

//struct StructName {
//    var name: String
//    var age: Int
//    var a = 5
//    var b = 6
//
//    func swap() {
//        a = a + b
//    }
//}

var functype = nameOfArray
//print(type(of: functype))

print(functype("Darshan", "Shyam", "Shubham", "HJU"))

protocol Powder: AnyObject {
    func makeDone()
}

class Curior: Powder {
    func makeDone() {
        print("The lot is made by factory")
    }
}

class Factory {
    weak var delegate: Powder?
    func wasDone() {
        delegate?.makeDone()
        print("The lot is taken by courier man")
    }
}

var curior = Curior()
var factor = Factory()
factor.delegate = curior
factor.wasDone()

func inoutGen<T>(num: inout T, num2: inout T) {
    print(num)
    print(num2)
    var temp = num
    num = num2
    num2 = temp
    print(num)
    print(num2)
    print(temp)
}

var arti = 8.5
var trai = 9.5
inoutGen(num: &arti, num2: &trai)
print(arti)
print(trai)

func factorial(num: Int) -> Int{
    if num == 0 {
        return 1
    } else {
        return num * factorial(num: num - 1)
    }
}

print(factorial(num: 5))

func closure(cl: () -> ()){
    cl()
}
closure {
    print("Darshan")
}

// non escaping closure

func sum(a: [Int], cl: (Int) -> ()) {
    var add = 0
    for i in a {
        add += i
    }
    cl(add)
}

func addsum() {
    var arr = [1,2,3,4,5]
    sum(a: arr) { (sum) in
        print(sum)
    }
}

// non escaping closure

func fetchData(_ complition: @escaping (_ sucess: Bool, _ data: Data?) -> Void) {
    
    let url = URL(string: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures")!
    
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let data = data {
            complition(true, data)
        } else {
            complition(false, nil)
        }
    }
    task.resume()
}

enum Days {
    case monday
    case tuesday
}

//extension Days {
//    case wednesday
//    case thursday
//}

var day = Days.monday

// Assoiciated value

//associated and rawvalue combination

enum Login: CaseIterable {
    static var allCases: [Login] {
        return [.Facebook(via: "", 0), .Google(0), .instagram]
    }
    
    case Facebook(via: String, Int)
    case Google(Int)
    case instagram
}
print(Login.allCases)

var login = Login.Facebook(via: "Login via facebook", 8) //here via is named assoiciated value therefor redability increase
//print(login)
//print(type(of: login))
//login = Login.Google(5)
//print(login)
//login = Login.instagram
//print(login)

switch login {
case .Facebook(via: "Login via facebook", 5):
    print("facebook")
case .Google(8):
    print("Google")
case .instagram:
    print("instagram")
case .Facebook(via: _, _):
    print("facebook")
case .Google(_):
    print("Google")
}

enum Planet: Int {
    case mercury = 1, venus, earth
}

var planet = Planet.earth.rawValue

if let pla = Planet(rawValue: 3){
    switch pla {
    case .mercury:
        print("mercury available")
    case .venus:
        print("venus available")
    case .earth:
        print("earth available")
    }
}else {
    print("please add valid value")
}

// Define Recursive Enumeration case
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

// Define variables of type ArithmeticExpression enum
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let three = ArithmeticExpression.number(3)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, three)

// Evaluate the expression using recursive function
func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))

class FactoryforProduct {
    var product = "product name"
    var address = "address"
}

class Food {
    var deatil = FactoryforProduct()
}

var food = Food()
food.deatil.address = "Ahmedabad"
food.deatil.product = "Sev"
print(food)

struct Hotel {
    var name: String
    var numberOfStar: Int
    
    init(name: String, numberOfStar: Int) {
        self.name = name
        self.numberOfStar = numberOfStar
    }
    
}

var hotel = Hotel(name: "Darshan", numberOfStar: 4)
hotel.name = "Darss"
print(hotel)

class Properties {
    var t: String = "Dar"{
        willSet{
            print("new value")
        }
        didSet(newValue) {
            t = newValue
        }
    }
}

private extension Properties {
    func addition() {
        print("Extension use")
    }
}

var prop = Properties()
prop.t = "Darshan"
print(prop.t)
prop.addition()

//class Fclass {
//
//}
//
//extension Fclass: Properties {
//
//}


struct Area {
    var length = 0, height = 0, width = 0
    var area: Int {
        return length * height * width
    }
}

var area = Area(length: 5, height: 5, width: 5)
print(area.area)

class TypeMethod {
    static func add() {
        print("Static added")
    }
    
    
}

//var typeMethod = TypeMethod.add()

class UseSubscript {
    var arr = ["sundaay", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"]
    var ad = 0
    subscript(index: Int) -> String {
        get{
            return arr[index]
        } set{
            arr[index] = newValue
        }
    }
    
    //    subscript(i1: Int) -> Int {
    //        get{
    //            return i1
    //        }
    //        set(i1){
    //            ad = ad + i1
    //        }
    //    }
}

var use = UseSubscript()
//print(use[3])
use[6] = "Week"

final class Dictionarydict {
    var dict = [1: "Darshan", 2: "Shyam", 3: "Shubham"]
    
    subscript(index: Int) -> String {
        get{
            return dict[index] ?? ""
        } set {
            dict[index] = newValue
        }
    }
}

var dic = Dictionarydict()
dic[4] = "Xyz"
print(dic.dict)

var dictio: Dictionarydict

// type subscript

enum PlanetOf: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    static subscript(index: Int) -> PlanetOf {
        return PlanetOf(rawValue: index) ?? PlanetOf.earth
    }
}

var planetOf = PlanetOf[9]

//class ChildClass: Dictionarydict {
//    var art = []
////    override subscript(index: Int) -> String {
////        get{
////            return art[index]
////        }
////    }
//}

class ArrayOfDictionary {
    var array: [[Int: String]] = [[1: "Darshan"], [2: "Dangar"], [3: "Shyam"]]
    
    subscript(index: Int) -> String {
        for i in array  {
            if i[index] != nil {
                return i[index]!
                
            }
        }
        return "not found"
    }
}

var dicthjhj = ArrayOfDictionary()
dicthjhj[3]

struct KeyValue {
    let keyValue = [ [1: "one"], [2: "two"], [3: "three"] ]
    
    
    
    subscript(key: Int) -> String {
        for element in keyValue {
            
            if element[key] != nil {
                
                return element[key]!
            }
        }
        return " "
    }
}

var kry = KeyValue()
kry[1]
kry[2]

class UseExtension {
    var arr = [9,8,7,6,5,4,3,2]
    func add(){
        print("add called")
    }
}

private extension UseExtension {
    subscript(index: Int) -> Int {
        return arr[index]
    }
}

var useExt = UseExtension()
useExt[2]

class usePrivateExtension: UseExtension {
    var a = 0
}

var usePrivate = usePrivateExtension()
usePrivate[5]

extension Int {
    var space: Int {
        return self * 5 * 6
    }
}

5.space

struct Deatils {
    var name: String
    var age: Int
}

extension Deatils {
    init(name: String) {
        //        self.name = name
        //        self.age = age
        self.init(name: name)
    }
}

extension Int {
    mutating func square() {
        self *= self
    }
}

var irn = 5
irn.square()

extension String {
    mutating func concetination() {
        self += self
    }
}

var str = "Darshan"
str.concetination()

extension Int {
    subscript(a:Int) -> Int {
        var deminator = 1
        for _ in 0..<a {
            deminator *= 10
        }
        return (self / deminator) % 10
    }
}

52228[4]

protocol Make {
    func done()
}

enum Switch {
    case on
    case off
    
    mutating func action() {
        
    }
}

var switc = Switch.off

switch switc {
case .off:
    print("switch off please on switch")
case .on:
    print("Switch on")
}

var set = Set<Int>()

class Square {
    var arr = [8,9,7,56,4,2,6]
    subscript(a: Int) -> Int {
        get{
            return arr[a] * arr[a]
        }
        set{
            arr[a] = newValue
        }
    }
}

class BB {
    var index: Int
    init(index: Int) {
        self.index = index
    }
}

var square = Square()
square[2] = square[2]
square.arr

//class JIHUY {
//    var b: Int {
//        get {
//            return b // b recursive call
//        }
//    }
//}
//
//var objj = JIHUY()

class Customer {
    var name: String
    var creditcard: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("deinit called")
    }
}

class CreditCard {
    var bankName: String
    unowned var customerName:Customer
    init(bankName: String, customerName: Customer){
        self.bankName = bankName
        self.customerName = customerName
    }
    deinit {
        print("deinit called")
    }
}
var customer: Customer?
customer = Customer(name: "Darshan")
customer!.creditcard = CreditCard(bankName: "Sbi", customerName: customer!)

//customer = nil



enum DivisionError: Error {
    case dividedbyZero
}

func division(number: Int, deminator: Int) throws {
    if deminator == 0 {
        throw DivisionError.dividedbyZero
    }else {
        let result = number / deminator
        print(result)
    }
}

try? division(number: 10, deminator: 0)

//do{
//    try division(number: 10, deminator: 0)
//    print("Valid Divisioble")
//}
//catch DivisionError.dividedbyZero {
//    print("Error: Deminator cannot be 0")
//}

class Function {
    
    func function1() -> String? {
        return "Darshan"
    }
    
    func functin2() -> String? {
        return "Shubham"
    }
    
    func function3() -> String? {
        return "Shyam"
    }
    
    func function4() -> String? {
        return nil
    }
    
    func function5() -> String? {
        return "team"
    }
    
}

let funct = Function()
funct.function1()


class StrongReferenceCycle {
    let name: String
    let age: Int
    
    var cl:(() -> ())?
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        print("init src")
        cl = { [weak self] in
            print(self!.name)
        }
    }
    
    deinit{
        print("deinit src")
    }
}

var src: StrongReferenceCycle? = StrongReferenceCycle(name: "darshan", age: 22)
src = nil

protocol Delay {
    func passMsg()
}

struct PersonMsg: Delay {
    func passMsg() {
        print("massage passed")
    }
}

struct Msg {
    var delegate: Delay?
    func message() {
        delegate?.passMsg()
        print("message sucess")
    }
}

var perso =  PersonMsg()
var msg = Msg()

msg.delegate = perso
msg.message()


func nameClo(cl: () -> ()) {
    cl()
}
nameClo {
    print("Darshan")
}

func nameClos(cl: @escaping () -> ()) {
    print("use escaping")
    
    
    //call any function
    cl()
    
}

nameClos {
    print("Darshan")
}

func closuFunc() {
    var a = 10
    let cl:() -> () = { [a] in
        print(a)
    }
    
    a = 20
    print(a)
    cl()
}
closuFunc()

enum Xbb {
    case s
    
    class P{
        var a = 0
    }
}

var ek = Xbb.P()

protocol Darshan {
    var dd: Int {get set}
    static func DD()
}

class DD: Darshan {
    static func DD() {
        print("DD used")
    }
    
    
    var dd: Int {
        get{
            return self.dd
        }
        set{
            self.dd = newValue
        }
    }
}

enum Signup {
    case Facebook(String)
    case google
}

var signup = Signup.Facebook("Darshan")

//Signup.google = 15

signup = .google

print(signup)

switch signup {
case .Facebook(var a):
    print("value is: \(a)")
case .google:
    print("google is available")
}

protocol Conform {
    var da: Int {get}
}

class protocolConform: Conform {
   
    var da: Int {
        get{
            return 5
        }
    }
    
}

class Inherit: protocolConform {
    var inherit = protocolConform().da
}

func key() {
    print(aKey)
}

var aKey = 10
key()

var dA: Int = 10 {
    
    willSet{
        print(newValue)
    }
    didSet{
        print(oldValue)
        //print(newValue)
        //print(newValue)
    }
}

dA = 15

enum Airport: String {
    
    case rajkot = "Rjkt"
    case ahmedabad = "adb"
    //case dubai(name: String)
}

print(Airport(rawValue: "Rjkt") ?? "")
print(Airport.rajkot.rawValue)

enum Car {
    
    case lamborgini
    case rolsRoys
    
}

print(Car.rolsRoys)

enum RawAsso {
    case name(String)
    case age(Int)
    
    func change() -> String {
        switch self {
        case .name(let a):
            print("name is: \(a)")
            return a
        case .age(let b):
            print("age is: \(b)")
            return String(b)
        }
    }
}

var deatils = RawAsso.age(50)
deatils.change()
print(deatils)
print(RawAsso.age(58))

print(deatils)

enum SwitchWork {
    case on
    case off
    
    mutating func changeWork() -> () {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var swit = SwitchWork.on
swit.changeWork()
print(swit)

enum Department: String {
    static var d = 5
    case nativeMobile = "NativeMobile"
    case reactNative = "ReactNative"
    case fluter = "Fluter"
}

var department = Department.fluter.rawValue
print(department)
print(Department.d)

var departmentComp: Department
departmentComp = .nativeMobile
type(of: departmentComp)

var and = Department.nativeMobile.rawValue
type(of: and)

//enum AirportEnum {
//    //typealias RawValue = <#type#>
//
//    case munich = "MUC"
//    case sanFrancisco = "SFO"
//    case singapore = "SIN"
//    case london(String)
//}

// optional protocol
//
// @objc protocol Optional {
//    @objc func addFunction()
//    func addCalc()
//    func optionalfunc()
//}
//
//extension Optional {
//    func optionalfunc() {
//        
//    }
//}
//
//class Opt: Optional {
//    func addFunction() {
//        <#code#>
//    }
//    
////    func addFunction() {
////
////    }
//    
//    func addCalc() {
//        print("Added AddCalc function")
//    }
//}

protocol Made: AnyObject {
    func isMade()
}

class Compny {
    weak var delegate: Made?
    func made() {
        delegate?.isMade()
    }
}

class Person: Made {
    func isMade() {
        print("Product made by compny")
    }
}

var compny = Compny()
var person = Person()

compny.delegate = person
compny.made()

protocol DeatilsProtocol {
    func deatils()
}

class PersonDeatils {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class StudentDeatils: PersonDeatils, DeatilsProtocol {
    
    var studentRollNo: Int
    
    func deatils() {
        print("Deatils")
    }
    
    init(studentRollNo: Int) {
        self.studentRollNo = studentRollNo
        super.init(name: "Darshan", age: 21)
    }

}

var studentDeatils = StudentDeatils(studentRollNo: 17)
print(studentDeatils.studentRollNo)
print(studentDeatils.age)
print(studentDeatils.name)

class School: StudentDeatils {
    
}

var school = School(studentRollNo: 18)
print(school.name)
print(school.studentRollNo)

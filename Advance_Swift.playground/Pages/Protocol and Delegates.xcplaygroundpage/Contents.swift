//protocol

//protocol synatax
import UIKit
import Foundation

protocol SomeProtocol {
    //var someProtocol = 5
}

protocol FirstProtocol {
    // var FirstProtocol = 8
}

struct ProtocolChecked: SomeProtocol, FirstProtocol {
    
}

//property requirement
protocol Greet {
    var name: String { get }
    func message()
}

class EmployeeGreet: Greet {
    var name = "Darshan"
    
    func message() {
        print("Good Morning!", name)
    }
}

var employee1 = EmployeeGreet()
employee1.message()

//set getable and setable property

protocol Gettable  {
    var gettable: Int { get }
}

protocol GetSetProtocol {
    var getset: Int { get set }
}


protocol Sum {
    var sum: Int { get set }
}
protocol Sub {
    var sub: Int { get set }
}
protocol Multiple {
    var multiple: Int { get set }
}
protocol Divide {
    var divide: Int { get set }
}

class Calculator: Sum, Sub, Multiple, Divide {
    var addd = 0
    var sum: Int {
        get {
            return addd
        }
        set{
            addd = newValue
        }
    }
    var sub: Int {
        get{
            return addd
        }
        set{
            addd = newValue
        }
    }
    
    var multiple: Int {
        get{
            return addd
        }
        set{
            addd = newValue
        }
    }
    
    var divide: Int {
        get{
            return addd
        }
        set{
            addd = newValue
        }
    }
}

var calculator = Calculator()
calculator.sum = 5
calculator.addd
calculator.sub = 10
calculator.addd

//
protocol FullName {
    var fullname: String { get }
}
struct PersonProtocol: FullName {
    var fullname: String
}

var person1 = PersonProtocol(fullname: "Darshan")
person1.fullname

//mutating method requirements

protocol MutatingMethod {
    mutating func mutatingfunc()
}

enum Switch {
    case on, off
    mutating func mutatingfunc() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var switchProtocol = Switch.off
switchProtocol.mutatingfunc()


//initializers requirement

protocol Initializers {
    init(initilizers: Int)
}
class InitializersClass {
    var initializers: Int
    init(initializers: Int) {
        self.initializers = initializers
    }
}
var initializersClass = InitializersClass(initializers: 5)
print(initializersClass.initializers)

class SubclassInitializers: InitializersClass{
    var subInitializers: Int
    init(subInitializers: Int, initializers: Int){
        self.subInitializers = subInitializers
        super.init(initializers: initializers)
    }
}

var subinitializers = SubclassInitializers(subInitializers: 8, initializers: 9)
print("\(subinitializers.subInitializers) and \(subinitializers.initializers)")

//class implementation of protocol initializers requirement

class ProtocolInitializers {
    var initializers: Int
    init(initilizers: Int) {
        self.initializers = initilizers
    }
}

class SubProtocolInit: ProtocolInitializers, Initializers {
    var subProtocolInit: Int
    required override init(initilizers: Int) {
        self.subProtocolInit = initilizers
        super.init(initilizers: initilizers)
    }
}

//failable Initializers
protocol InitializersFailable {
    init?(initilizers: Int)
}

class ProtocolFailableInitializers {
    var initializers: Int
    init(initilizers: Int) {
        self.initializers = initilizers
    }
}

class SubProtocolFailableInit: ProtocolInitializers, Initializers {
    var subProtocolInit: Int
    required override init(initilizers: Int) {
        self.subProtocolInit = initilizers
        super.init(initilizers: initilizers)
    }
    func add() {
        print("function called inside")
    }
}


//extension Initializers {
//    func add() {
//        print("protocol extension called")
//    }
//}

var initializers = SubProtocolFailableInit(initilizers: 80)
initializers.add()


//protocol as type

protocol ProtocolAsType {
    func sum()
}

class ProtocolCheckType {
    var protocolAsType: ProtocolAsType?
    
    //    init( protocolAsType: ProtocolAsType){
    //        self.protocolAsType = protocolAsType
    //    }
}


var protocoltype = ProtocolCheckType()

//optional protocol

@objc protocol OptionalProtocol {
    @objc func calc()
}

class CheckOptionalProtocol {
    var  p = 5
}

var pq = CheckOptionalProtocol()
pq.p

//delegation

struct Production {
    var productname: String = ""
    var productionTime: String = ""
}

class Product {
    var productDelegate: ProductDelegate?
    func makeProduction() {
        var product = Production()
        product.productname = "SmartPhone"
        product.productionTime = "3 Months"
        
        productDelegate?.productwasDone(product)
    }
}

protocol ProductDelegate{
    func productwasDone(_ product: Production)
}

class ProductShop: ProductDelegate {
    func productwasDone(_ product: Production) {
        print("product is done,please take it")
    }
}

let productShop = ProductShop()
let smartPhone = Product()
smartPhone.productDelegate = productShop
smartPhone.makeProduction()

protocol Payment {
    func paymentWasDone()
}
class Shop {
    var payment: Payment?
    var iteamName: String
    var iteamPrice: Int
    init(iteamName: String, iteamPrice: Int) {
        self.iteamName = iteamName
        self.iteamPrice = iteamPrice
    }
    func paymentDone(){
        payment?.paymentWasDone()
    }
    
}

class PaymentCheck: Payment {
    func paymentWasDone() {
        print("Payment is done ")
        
    }
}

var shop = Shop(iteamName: "Cloths", iteamPrice: 1000)
shop.payment = PaymentCheck()
shop.paymentDone()


//adding protocol conformance with an extension

class ExtensionWIthProtocol{
    var extensionwithProtocol = 0
}

protocol Extension {
    func calculator()
}

extension ExtensionWIthProtocol: Extension {
    func calculator() {
        print("Extension method called")
    }
}
var extensionwithProtocol = ExtensionWIthProtocol()
extensionwithProtocol.calculator()

//conditinally conforming to a protocol

protocol Purchaseable {
    func buy()
}
struct Book: Purchaseable {
    func buy() {
        print("You bought a book")
    }
}
extension Array: Purchaseable where Element: Purchaseable {
    func buy() {
        for item in self {
            item.buy()
        }
    }
}

var purchasable = Book()
purchasable.buy()

//declaring protocol adoption with extension

protocol AboutHouse {
    var aboutHouse: String { get }
}
struct HouseProtocolUse {
    var name: String
    
}
extension HouseProtocolUse: AboutHouse {
    var aboutHouse: String {
       return "House is called \(name)"
    }
}

let villa = HouseProtocolUse(name: "Nivas")
let aboutHouse: AboutHouse = villa

print(aboutHouse.aboutHouse)

//Adopting a Protocol using a synthesized implementation
//equatable
struct Num: Equatable {
    var no1 = 0, no2 = 0
}
var num1 = Num(no1: 5, no2: 8)
var num2 = Num(no1: 6, no2: 8)
if num1 == num2 {
    print("Both variable are same")
}else {
    print("Both variable are not same")
}

//comparable

enum SkillLevel: Comparable {
    case beginer
    case intermediiate
    case expert(start: Int)
}

var level = [SkillLevel.intermediiate,SkillLevel.beginer,SkillLevel.expert(start: 8), SkillLevel.expert(start: 3)]
for i in level.sorted() {
    print(i)
}

//collection of protocol types

//protocol inheritance

protocol InheritOne {
    func add()
}
protocol InheritTwo {
    func show()
}

protocol Inherit: InheritOne, InheritTwo {
    func inherit()
}

class InheritProtocolClass: Inherit {
    func inherit() {
        print("use Inherit")
        add()
    }
    
    func add() {
        print("use InheritOne")
        show()
    }
    
    func show() {
        print("use InheritTwo")
    }
}

var inheritProtocolClass = InheritProtocolClass()
inheritProtocolClass.inherit()

//class only protocol

protocol ClassOnly: AnyObject {
    func area(r: Int)
}

class CircleArea: ClassOnly {
//    func area() {
//        <#code#>
//    }
    
    func area(r: Int) {
        var are: Int = r * r * Int(3.14)
        print(are)
    }
}

var circleArea = CircleArea()
circleArea.area(r: 5)

// ANyObject not allow struct or enum
//struct CircleSq: ClassOnly {
//
//}


//protocol Composition

protocol No1 {
    var num1: Int { get }
}
protocol No2 {
    var no2: Int { get }
}

func number(no: No1 & No2 ){
    print("no1 is \(no.num1) and no2 is : \(no.no2)")
}
struct Number: No1, No2 {
    var num1: Int
    var no2: Int
}
var num = Number(num1: 5, no2: 8)
number(no: num)

//checking for protocol connformance

protocol HasArea {
    var area: Double { get }
}

class AreaofTypeCasting: HasArea {
    var area: Double
    init(area: Double) {
        self.area = area
    }
}

class AreaOfOffice: HasArea {
    var area: Double
    var address: String
    init(area: Double, address: String) {
        self.area = area
        self.address = address
    }
}

class WithoutHAshArea {
    var width: Int
    init(width: Int){
        self.width = width
    }
}

var area: [AnyObject] = [AreaofTypeCasting(area: 5.10),
AreaOfOffice(area: 51, address: "Xyz"),
WithoutHAshArea(width: 56)]

for i in area {
    if let area = i as? HasArea {
        print("hash area is: \(area.area)")
    } else {
        print("this is other of without Hasharea")
    }
}

// @objc protocol can be adopted only by classes not for enum or struct

@objc protocol Ac {
    @objc optional func product()
}

class MakeAc {
    var productAc: Ac?
    func product(){
        if let a = productAc?.product?() {
            print(a)
        }
    }
}

var makeAc = MakeAc()
makeAc.productAc?.product?()





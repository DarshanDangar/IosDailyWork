//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/extension Initializers {
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

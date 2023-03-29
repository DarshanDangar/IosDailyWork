//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//protocol

//protocol synatax

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
}

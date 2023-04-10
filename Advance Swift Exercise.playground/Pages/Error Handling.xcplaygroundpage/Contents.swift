//: [Previous](@previous)

//1.     Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and if password is empty, throw “Empty password” exception.

enum Valid: Error {
    
    case passwordToShort
    case emptyPassword
    
}

func validation(password: String) throws {
    
    let minLength = 8
    if password.isEmpty {
        throw Valid.emptyPassword
    } else if password.count < minLength {
        throw Valid.passwordToShort
    }
    
}

do{
    try validation(password: "jijuhnk")
    try validation(password: "")
}
catch Valid.passwordToShort {
    print("pasword length must be 8 character")
}
catch Valid.emptyPassword {
    print("please add password")
}

// Ans

// pasword length must be 8 character

// 2.    Create a program for shopping cart. If desired quantity for an item is not available, throw exception.

enum Available: Error {
    
    case notavailable
    
}

let shopingIteam = ["Laptop", "Smart Phone", "Watch"]

func available(_ iteam: String) throws {
    
    for iteam in shopingIteam {
        if shopingIteam.contains(iteam) {
            print("iteam is available")
        } else {
            throw Available.notavailable
        }
    }
    
}

do {
    try available("Lapto")
} catch Available.notavailable {
    print("iteam is not available")
}

// Ans

// iteam is available
// iteam is available
// iteam is available

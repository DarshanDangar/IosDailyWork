//: [Previous](@previous)

import Foundation

// 1.   Create following string manipulation functions using string extensions:

extension String {
    
    func count() {
        print(self.count)
    }
    
}

"Dar".count()

// Ans

// 3

// 2.   Add a character in a string at 5th position

extension String {
    
   mutating func addCharacter(char: Character) {
        self.insert(char, at: self.index(self.startIndex, offsetBy: 5))
    }
    
}

var str = "Darshan"
str.addCharacter(char: "X")
print(str)

// Ans

// DarshXan

// 3.   Replace one character with other in a string

extension String {

    func change( _ characterOld: String, _ characterNew: String) -> String {

        self.replacingOccurrences(of: characterOld, with: characterNew)

    }

}

print("Darshan".change("D", "d"))

// Ans

// darshan

// 4.   Remove white spaces from string

extension String {
    
    func removeWhiteSpace() -> String {
        
        self.replacingOccurrences(of: " ", with: "")
        
    }
    
}

var strString = "Da rs ha n  Dan ga r".removeWhiteSpace()
print(strString)

// Ans

// DarshanDangar

// 5.   Get number of words in a string

extension String {
    
    func noOfWords() -> Int {
        self.split(separator: " ").count
    }
    
}

print("Darshan Dangar".noOfWords())

// Ans

// 2

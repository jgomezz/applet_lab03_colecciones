/*
 Week : 3
 Subject : Dictionaries in Swift
 Author : Jaime Gomez
 Date : 28/03/2025
 Version : 0.0.1
 */

// import UIKit

// -----------------------------
//    Sets
//   https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Dictionaries
//  https://developer.apple.com/documentation/swift/dictionary

// -----------------------------

/*
 A dictionary is a type of hash table, providing fast access to the entries it contains. Each entry in the table is identified using its key, which is a hashable type such as a string or number. You use that key to retrieve the corresponding value, which can be any object. In other languages, similar data types are known as hashes or associated arrays.
 */

// Overview

 /*
 
var responseMessages = [200: "OK",
                        403: "Access forbidden",
                        404: "File not found",
                        500: "Internal server error"]

// Empty dictionary literal ([:]).
var emptyDict: [String: String] = [:]

// Getting and Setting Dictionary Values

print(responseMessages[200] ?? "Default")

let httpResponseCodes = [200, 403, 301]

for code in httpResponseCodes {
    if let message = responseMessages[code] {
        print("Response \(code): \(message)")
    } else {
        print("Unknown response \(code)")
    }
}

responseMessages[301] = "Moved permanently"
print(responseMessages[301] ?? "Default")

responseMessages[404] = "Not found"
responseMessages[500] = nil
print(responseMessages)

var interestingNumbers = ["primes": [2, 3, 5, 7, 11, 13, 17],
                          "triangular": [1, 3, 6, 10, 15, 21, 28],
                          "hexagonal": [1, 6, 15, 28, 45, 66, 91]]
for key in interestingNumbers.keys {
    interestingNumbers[key]?.sort(by: >)
}

print(interestingNumbers["primes"]!)

// Iterating Over the Contents of a Dictionary

let imagePaths = ["star": "/glyphs/star.png",
                  "portrait": "/images/content/portrait.jpg",
                  "spacer": "/images/shared/spacer.gif"]


for (name, path) in imagePaths {
    print("The path to '\(name)' is '\(path)'.")
}

// You can search a dictionary’s contents for a particular value using the contains(where:) or firstIndex(where:) methods supplied by default implementation. The following example checks to see if imagePaths contains any paths in the "/glyphs" directory:

let glyphIndex = imagePaths.firstIndex(where: { $0.value.hasPrefix("/glyphs") })

if let index = glyphIndex {
    print("The '\(imagePaths[index].key)' image is a glyph.")
} else {
    print("No glyphs found!")
}

print(imagePaths[glyphIndex!])

// */


// /*

// Creating an Empty Dictionary
var namesOfIntegers: [Int: String] = [:]


namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair

namesOfIntegers = [:]
// namesOfIntegers is once again an empty dictionary of type [Int: String]

// Creating a Dictionary with a Dictionary Literal

// var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

print("The airports dictionary contains \(airports.count) items.")

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}

airports["LHR"] = "London"

airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport isn't in the airports dictionary.")
}

airports["APL"] = "Apple International"

airports["APL"] = nil

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary doesn't contain a value for DUB.")
}

// Iterating Over a Dictionary
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

let airportCodes = [String](airports.keys)

let airportNames = [String](airports.values)


// */


/*
 Week : 3
 Subject : Sets in Swift
 Author : Jaime Gomez
 Date : 28/03/2025
 Version : 0.0.1
 */

// import UIKit

// -----------------------------
//    Sets
//   https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Sets

//  https://developer.apple.com/documentation/swift/sets

// -----------------------------

/*
 You use a set instead of an array when you need to test efficiently for membership and you aren’t concerned with the order of the elements in the collection, or when you need to ensure that each element appears only once in a collection.
 */

// Overview

 /*
 
    let ingredients: Set = ["cocoa beans", "sugar", "cocoa butter", "salt"]
  
    if ingredients.contains("sugar") {
        print("No thanks, too sweet.")
    }
  
// */


// Set Operations
// https://developer.apple.com/documentation/swift/set#Set-Operations

 // /*

let primes: Set = [2, 3, 5, 7]

// Tests whether primes is a subset of a Range<Int>
print(primes.isSubset(of: 0..<10))

// Performs an intersection with an Array<Int>
let favoriteNumbers = [5, 7, 15, 21]
print(primes.intersection(favoriteNumbers))


// Sequence and Collection Operations

// var primes: Set = [2, 3, 5, 7]

print(primes)

if primes.isEmpty {
    print("No primes!")
} else {
    print("We have \(primes.count) primes.")
}

let primesSum = primes.reduce(0, *)
print("primesSum = \(primesSum)")



let primeStrings = primes.sorted().map(String.init)
print("primes = \(primes)")
print("primeStrings = \(primeStrings)")

for number in primes {
    print(number)
}

// Many sequence and collection operations return an array or a type-erasing collection wrapper instead of a set. To restore efficient set operations, create a new set from the result.


let primesStrings = primes.map(String.init)

let primesStringsSet = Set(primes.map(String.init))


// */


// Second Part

 /*

// Creating and Initializing an Empty Set

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
  
letters.insert("a")
// letters now contains 1 value of type Character

letters = []
// letters is now an empty set, but is still of type Set<Character>


// Creating a Set with an Array Literal

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

//var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]

// Accessing and Modifying a Set

print("I have \(favoriteGenres.count) favorite music genres.")

if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

favoriteGenres.insert("Jazz")

if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}

// Iterating Over a Set

for genre in favoriteGenres {
    print("\(genre)")
}

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

// Performing Set Operations

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

oddDigits.intersection(evenDigits).sorted()
// []

oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]

oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]

// Set Membership and Equality

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true

farmAnimals.isSuperset(of: houseAnimals)
// true

farmAnimals.isDisjoint(with: cityAnimals)
// true



// */


/*
// Exercise 03

var primes: Set = [2, 3, 5, 7]

let favoriteNumbers = [5, 7, 15, 21]

print(primes.intersection(favoriteNumbers))


[2,3]
[5,7]
[15,21]
[2,3,15,21]

*/
/*
// Exercise 04

var primes: Set = [2, 2, 5, 7]

let favoriteNumbers = [5, 7, 15]

print(primes.union(favoriteNumbers).sorted())


[2, 5, 7, 15]
[2, 2, 5, 7, 15]
[15, 7, 5, 2]
[15, 7, 5, 2, 2]
*/

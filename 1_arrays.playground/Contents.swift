import Cocoa

/*
 Week : 3
 Subject : Arrays in Swift
 Author : Jaime Gomez
 Date : 28/03/2025
 Version : 0.0.1
 */

// import UIKit

// -----------------------------
//    Arrays
//   https:docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Arrays
//  https://developer.apple.com/documentation/swift/array
// -----------------------------

/*
 Arrays are one of the most commonly used data types in an app. You use arrays to organize your app’s data. Specifically, you use the Array type to hold elements of a single type, the array’s Element type. An array can store any kind of elements—from integers to strings to classes.
 */


// /*
  
    // Overview

    // An array of 'Int' elements
    let oddNumbers = [1, 3, 5, 7, 9, 11, 13, 15]

    // An array of 'String' elements
    let streets = ["Albemarle", "Brandywine", "Chesapeake"]
  
    // Shortened forms are preferred
    var emptyDoubles: [Double] = []

    // The full type name is also allowed
    var emptyFloats: Array<Float> = Array()

    // Accessing Array Values

    for street in streets {
        print("I don't live on \(street).")
    }

    if oddNumbers.isEmpty {
        print("I don't know any odd numbers.")
    } else {
        print("I know \(oddNumbers.count) odd numbers.")
    }


    if let firstElement = oddNumbers.first, let lastElement = oddNumbers.last {
        print(firstElement, lastElement, separator: ", ")
    }

    print(emptyDoubles.first, emptyDoubles.last, separator: ", ")

    // An array of 'Int' elements
    // let oddNumbers = [1, 3, 5, 7, 9, 11, 13, 15]

    print(oddNumbers[0], oddNumbers[3], separator: ", ")

    // print(emptyDoubles[0])


    // Adding and Removing Elements

    var students = ["Ben", "Ivy", "Jordell"]

    students.append("Maxime")

    students.append(contentsOf: ["Shakia", "William"])

    students.insert("Liam", at: 3)

    // Ben's family is moving to another state
    students.remove(at: 0)

    // William is signing up for a different class
    students.removeLast()


    if let i = students.firstIndex(of: "Maxime") {
        students[i] = "Max"
    }

    print(students)

    // Modifying Copies of Arrays

    var numbers = [1, 2, 3, 4, 5]
    var numbersCopy = numbers
    numbers[0] = 100
    print(numbers)
    // Prints "[100, 2, 3, 4, 5]"
    print(numbersCopy)
    // Prints "[1, 2, 3, 4, 5]"


// */









// Creating an Empty Array

 /*
 
var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)
print("someInts is of type [Int] with \(someInts.count) items.")

someInts = []
print("someInts is of type [Int] with \(someInts.count) items.")

// */


// Creating an Array

 /*

var threeDoubles = Array(repeating: 0.0, count: 4)
print("threeDoubles : \(threeDoubles)")

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
print("anotherThreeDoubles : \(anotherThreeDoubles)")

var sixDoubles = threeDoubles + anotherThreeDoubles
print("sixDoubles : \(sixDoubles)")

// */

// Creating an Array with an Array Literal

 /*

var shoppingList: [String] = ["Eggs", "Milk"]

print("shoppingList : \(shoppingList)")

var anotherShoppingList = ["Eggs", "Milk"]

print("anotherShoppingList : \(anotherShoppingList)")

// */

// Accessing and Modifying an Array

 /*

var shoppingList: [String] = ["Eggs", "Milk"]

print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty.")
}

shoppingList.append("Flour")

shoppingList += ["Baking Powder"]

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

print("The shoppingList : \(shoppingList).")

var firstItem = shoppingList[0]

print("The firstItem is \(firstItem).")

shoppingList[0] = "Six eggs"

print("The shoppingList : \(shoppingList).")

shoppingList[4...6] = ["Bananas", "Apples"]

print("The shoppingList : \(shoppingList).")

shoppingList.insert("Maple Syrup", at: 0)

print("The shoppingList : \(shoppingList).")

let mapleSyrup = shoppingList.remove(at: 0)

print("mapleSyrup : \(mapleSyrup).")
print("The shoppingList : \(shoppingList).")

let apples = shoppingList.removeLast()

print("apples : \(apples).")
print("The shoppingList : \(shoppingList).")

// */


// Iterating Over an Array

 /*

var shoppingList: [String] = ["Eggs", "Milk","Flour","Baking Powder","Bananas"]

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

// */


/*
// Exercise 01

var students = ["Ben", "Jordell"]

students.append("Maxime")

students.append(contentsOf: ["Shakia"])

print(students)


["Ben",  "Jordell", "Maxime", "Shakia"]
["Maxime", "Ben",  "Jordell", "Shakia"]
["Ben",  "Jordell", "Shakia", "Maxime"]
["Maxime", "Shakia", "Ben", "Jordell", ]
*/

// Exercise 02
/*
var students =  ["Ben", "Ivy", "Jordell"]

students.insert("Liam", at: 1)

students.remove(at: 0)

students.removeLast()

print(students)
*/
/*
["Liam","Ivy"]
["Ben", "Ivy"]
["Ben", "Jordell"]
["Liam", "Ben"]
*/

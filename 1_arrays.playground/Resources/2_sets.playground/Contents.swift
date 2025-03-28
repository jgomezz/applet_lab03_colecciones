/*
 Week : 3
 Subject : Collections in Swift
 Date : Jaime Gomez
 Version : 0.0.1
 */

// import UIKit

// -----------------------------
//    Arrays
//   https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes#Arrays
// -----------------------------

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

// /*

var shoppingList: [String] = ["Eggs", "Milk","Flour","Baking Powder","Bananas"]

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

// */

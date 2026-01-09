import UIKit

// variables var
// constants let

var restaurantName = "Little Lemon"
print("Welcome to \(restaurantName)")

restaurantName = "Little Lemon Bistro"
print("The new name is \(restaurantName)")

// constants can not change
let city = "Milan"
// city = "Firenze" - Error: cannot assign a value to city
print("Our restaurant is located in: \(city)")

//String
var specialDish = "Spaghetti"

//Integer
var availableTables = 5

//Double
var dishPrice = 8.90

//Booleans
var isOpen = true

print("Today's special dish: \(specialDish) - $\(dishPrice)")

//Mini challenge 1:
// Create a variable called `NumberOfTables` and a constant called `ownerName`.
// Print a sentence like:
// "Little Lemon has 10 tables, owned by Mario."

var numberOfTables = 10

let ownerName = "David"

print("\(restaurantName) is owned by \(ownerName). They have \(numberOfTables) tables available.")

//Create one variable of each type (`String`, `Int`, `Double`, `Bool`) that describes something about a restaurant.
//Print a short description using them all in one sentence.
//Example:
//Little Lemon is open: true, has 20 tables, and our soup costs $4.99.

var foodType = "Italian"

var menuItems = 10

var averagePrice = 8.90

var open = true

print("\(restaurantName) is an \(foodType) restaurant with \(menuItems) items on the menu. The average price is \(averagePrice) dollars. It is currently \(open ? "open" : "closed"). ")


let pastaPrice = 10.50
let saladPrice = 6.25
let total = pastaPrice + saladPrice
print("The total is \(total) dollars.")

let tip = total * 0.15
print("The tip is \(tip) dollars.")

print("The total including tip is \(total + tip) dollars.")

//let pastaPrice = 10.50
//let saladPrice = 6.25
//let total = pastaPrice + saladPrice
//var tipTotal = total * 1.15

//print("Total price: $\(tipTotal)")

//print("The total is \(String(format: "%.2f", tipTotal))")

import UIKit
// --- ARRAYS ---

let dish = ["Pizza", "Pasta", "Gnocchi"]

print(dish[1]) // access to the data
print(dish[0])

// creatubg a mutable array
var orders = [String]()
orders.append("soup")
orders.append("burgers")

print(orders)

// --- DICTIONARIES ---
let menuPrices = [
    "Pizza" : 12.99,
    "Salad" : 13.00,
    "Pasta" : 9.50
    
]

print(menuPrices["Pizza"]!)

// challenge 1 - create a dictionary for drinks.

let drinks = [
    "Water": 1.00,
    "Coke": 1.50,
    "Orange Juice": 2.00
]

print("Water price:", drinks["Water"]!)

// for each

let fruits = [
    "Apple":1.50,
    "Banana":0.80,
    "Orange":1.40
    
]

fruits.forEach{fruit, price in
    if price > 1 {
        print("\(fruit): $\(price)")
    }
}

// Chellenge 2 - print all the drinks using for each

drinks.forEach{drink, price in
    print("\(drink): $\(price)")
}

import UIKit

// IF - ELSE If - ELSE

/*
 |----- SYNTAX -----|
 
 if condition {
    this block will run if condition is true
 } esle if condition2 {
    this block runs if confition1 is false and condition2 is true
 } else {
    this block runs if none of the above conditions are true
 }
 
 */

// ---- Example 1 ----
var guests:Int = 50
let capacity:Int = 10

if guests > capacity {
    print("Over capacity")
} else {
    print("We can seat this party")
}

// ---- Example 2 ----

let rating = 4.2

if rating >= 4.5 {
    print("Excellent")
} else if rating >= 3.5 {
    print("Good")
} else {
    print("Needs improvement")
}

// ---- Example 3: Bool operators ----
let isOpen = true
let hasOutDoorSeating = true

if isOpen && hasOutDoorSeating {
    print("Open with outdoor seating")
}else if isOpen && !hasOutDoorSeating {
    print("Open with indoor seating")
} else {
    print("Closed")
}

// --- Example 4: comparing string ----
let userName = "Tatiana"

if userName == "Tatiana" {
    print("Welcome, Tatiana")
} else {
    print("Unkown user")
}

// ---- Example 5: Ternary ----
let price = 12.0
let label = price > 10 ? "Premium" : "Regular"
print(label)

// ---- Example ----

let children = 0
let groupSize = 5

if groupSize >= 8 {
    print("Large group - call manager")
} else if children > 0 {
    print("Offer kids menu")
} else {
    print("Standard seating")
}

/*
 |----- Mini Challenge -----|
 */

var isVIP:Bool = false

if isVIP == true {
    print("You are VIP")
}else {
    print("You are not VIP")
}

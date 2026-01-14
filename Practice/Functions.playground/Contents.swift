import UIKit

/*
    Syntax
 
    func funcionName(parameter1: Type, parameter2: Type) -> ReturnType {
        // function body
        // logic goes here
 
        return value
    }
 
 */
// --- Eaxmple 1 : Simple fn ---
func printWelcome(){
    print("Welcome")
}

// --- Examoke 2 with 1 parameter and return ---

func greet(person: String) -> String{
    let greeting = "Hello" + person
    return greeting
}

//call the function
let message = greet(person: " Taylor")
print(message)

// --- Example 3 with 2 parameters and return ---

func add(num1: Int, num2: Int) -> Int{
    return num1 + num2
}

let result = add(num1:23, num2:12)
print("The addition is \(result)")

// --- Example 4 function with unamed parameters ---

func multiply(_ x: Int,_ y: Int) -> Int{
    return x*y
}

print(multiply(3,5))

// --- Example 5 ---

func deliveryTime(min: Int) -> String{
    return "Ready in \(min) minutes"
}

let message2 = deliveryTime(min:60)
print(message2)

/* MiniChallenge
 1.  Define a function called welcomeStudent.
 2.  The function should take one parameter: name of type String.
 3.  The function should return a String.
 4.  Inside the function, build a message like: "Welcome, [name]! Ready to learn Swift?".
 5.  Call the function with a sample name and print the result.
*/

func welcomeStudent(name: String) -> String{
    return "Welcome, \(name)! Ready to learn Swift?"
}

print(welcomeStudent(name: "David"))

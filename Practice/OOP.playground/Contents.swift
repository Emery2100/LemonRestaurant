import UIKit

/*
 OOP
 
 A class is used to define custom type of elements, it groups properties and behaviors (methods)
 It acts as a blueprint for creating objects.
 
 --- SYNTAX---
 class ClassName {
    var propertyName1: DataType
    var propertyName2: DataType
 
    init(var propertyName1: DataType,var propertyName2: DataType){
        self.propertyName1 = propertyName1
        self.propertyName2 = propertyName2
    }
    func functionName() -> ReturnType{
        return...
    }
 }
  
 */

//--- Example 1 ---

class Dog {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func bark(){
        print("\(name) says woof!")
    }
}

let dog1 = Dog(name: "Max", age: 5)
let dog2 = Dog(name: "Bella", age: 3)

dog1.bark()
dog2.bark()

// --- Example 2 ---
class Customer{
    //properties
    var name: String
    var email: String
    var visits: Int
    var phoneNumber: String
    
    //Initiliazer
    init(name: String, email: String, visits: Int, phoneNumber: String){
        self.name = name
        self.email = email
        self.visits = visits
        self.phoneNumber = phoneNumber
        
    }
    
    //Methods
    
    func greeting() -> String{
        return "Welcome back, \(name)"
    }
    
    func addVisit(){
        visits += 1
    }
    
    func summary(){
        print("\(name) - visits \(visits)")
    }
}

let customer1 = Customer(
    name: "Wilbert",
    email: "wilbert@example.com",
    visits: 4,
    phoneNumber: "555-1234"
)

let customer2 = Customer(
    name: "Jacob",
    email: "Jacob@example.com",
    visits: 2,
    phoneNumber: "555-1234"
)

print(customer1.greeting())
customer1.addVisit()
customer1.addVisit()
customer1.addVisit()
customer1.summary()

customer2.summary()


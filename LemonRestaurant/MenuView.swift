//
//  MenuView.swift
//  LemonRestaurant
//
//  Created by David Emery on 1/18/26.
//

import SwiftUI

struct MenuView: View {
    //vars and const
    @State private var showMessage = false
    @State private var showAffordableOnly = false
    @State private var showDesserts = false
    
    // dictionary
    let menu: [String:Double] = [
        "Pizza": 12.99,
        "BreadSticks": 3.99,
        "Stromboli": 14.99,
        "Calzone": 11.99,
        "Kobe Burger": 32.99,
        "Porter House": 67.99,
        "Prime Rib": 65.99
    ]
    
    // computed properties
    // do not store a value
    // each access recompute the value
    // syntax
    /*
     var propertyName: Type{
     return a calculated value
     }
     */
    
    // computed property 1 : sorted
    var sortedMenu: [(name: String, price: Double)]{
        menu
            .sorted { $0.key < $1.key}
            .map{ (name: $0.key, price: $0.value) }
    }
    
    // computed property 2: display affordables
    var displayedMenu: [(name: String, price: Double)] {
        if showAffordableOnly{
            return sortedMenu.filter{ $0.price < 15}
        }else{
            return sortedMenu
        }
    }
    
    // computed property 3: average
    var averagePrice: Double {
        let prices = displayedMenu.map{ $0.price } // extract the values
        let total = prices.reduce(0, +) // sum
        return total / Double(prices.count)
    }
    
    func getTotalItems() -> Int {
        displayedMenu.count
    }
    
    //func getHighestItem() -> Double {
    //    menu.values.max() ?? 0.0
    //}
    
    func getHighestItem() -> Double {
        var highest = 0.0
        for item in displayedMenu{
            if item.price > highest{
                highest = item.price
            }
        }
        return highest
    }
    
   // func getLowestItem() -> Double {
   //     menu.values.min() ?? 0.0
   // }
    
    func getLowestItem() -> Double {
        var lowest = Double.greatestFiniteMagnitude
        for item in sortedMenu{
            if item.price < lowest{
                lowest = item.price
            }
        }
        return lowest
    }
    
    
    var body: some View {
        // 1. convert dictionary into a sorted array
 //      let sortedMenu = menu.sorted {
//            $0.key.localizedCaseInsensitiveCompare($1.key) ==            .orderedAscending
//        }
        
        VStack{
            //header
            VStack{
                Image("littleLemon")
                    .resizable()
                    .scaledToFit()
                    .frame(height:125)
                Text("Today's menu")
                    .font(.title2)
                    .bold()
            }
            
            VStack{
                Toggle("Show welcome message", isOn: $showMessage)
                Toggle("Show items under $15", isOn: $showAffordableOnly)
            }
            .padding()
            if showMessage{
                Text("Welcome to the lemon restaurant")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding(.horizontal)
            }
            
            Button("View Desserts"){
                    showDesserts = true
            }
            .foregroundColor(.black)
            .sheet(isPresented: $showDesserts){
                DessertView()
            }
            .padding()
            .background(Color.green.opacity(0.2))
            //list
            List {
                ForEach(displayedMenu, id: \.name) { name, price in
                    HStack {
                        // LEFT SIDE (stacked)
                        VStack(alignment: .leading, spacing: 4) {
                            Text(name)
                                .font(.headline)

                            Text("$\(price, specifier: "%.2f")")
                                .foregroundColor(.secondary)
                        }

                        Spacer()

                        // RIGHT SIDE (Premium badge)
                        if price > 15 {
                            Text("*Premium")
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundColor(.yellow)
                        }
                    }
                    .padding(.vertical, 5)
                }
            }

            
            //footer
            Section{
                VStack{
                    HStack{
                        Text("Total items: \(getTotalItems())")
                        Text("Average price: $\(averagePrice, specifier: "%.2f")")
                    }
                    HStack{
                        Text("Highest price: $\(getHighestItem(), specifier: "%.2f")")
                        Text("Lowest price: $\(getLowestItem(), specifier: "%.2f")")
                    }
                }
                .font(.caption)
            }
        }
    }
}

#Preview {
    MenuView()
}

//
//  MenuView.swift
//  LemonRestaurant
//
//  Created by David Emery on 1/18/26.
//

import SwiftUI

struct MenuView: View {
    // dictionary
    let menu = [
        "Pizza": 12.99,
        "BreadSticks": 3.99,
        "Stromboli": 14.99,
        "Calzone": 11.99,
        "Kobe Burger": 18.99,
        "Porter House": 67.99
    ]
    
    func getTotalItems() -> Int {
        menu.count
    }
    
    func getHighestItem() -> Double {
        menu.values.max() ?? 0.0
    }
    
    func getLowestItem() -> Double {
        menu.values.min() ?? 0.0
    }
    
    
    var body: some View {
        // 1. convert dictionary into a sorted array
        let sortedMenu = menu.sorted {
            $0.key.localizedCaseInsensitiveCompare($1.key) == .orderedAscending
        }
        
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
            
            //list
            List{
                ForEach(sortedMenu, id: \.key){name, price in
                    HStack{
                        Text(name)
                            .font(.headline)
                        Spacer()
                        Text("$\(price, specifier: "%.2f")")
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical,5)
                    
                }
            }
            
            //footer
            Section{
                HStack{
                    HStack{
                        Text("Total items: \(getTotalItems())")
                    }
                    HStack{
                        Text("Highest: $\(getHighestItem(), specifier: "%.2f")")
                    }
                    HStack{
                        Text("Lowest: $\(getLowestItem(), specifier: "%.2f")")
                    }
                }
            }
        }
    }
}

#Preview {
    MenuView()
}

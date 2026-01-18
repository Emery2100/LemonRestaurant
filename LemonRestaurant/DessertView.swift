//
//  DessertView.swift
//  LemonRestaurant
//
//  Created by David Emery on 1/18/26.
//

import SwiftUI

let dessertMenu: [String:Double] = [
    "Ice Cream": 2.99,
    "Chocolate Cake": 3.99,
    "Cheesecake": 6.99,
    "Lava Cake": 7.99,
    "Carrot Cake": 4.99,
    "Creme Brulee": 8.99,
    "Deep Fried Oreos": 5.99
]

var sortedMenu: [(name: String, price: Double)]{
    dessertMenu
        .sorted { $0.key < $1.key}
        .map{ (name: $0.key, price: $0.value) }
}

struct DessertView: View {
    var body: some View {
        
        List{
            ForEach(sortedMenu, id: \.name){name, price in
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
        
    }
}

#Preview {
    DessertView()
}

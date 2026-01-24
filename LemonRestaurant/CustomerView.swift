//
//  CustomerView.swift
//  LemonRestaurant
//
//  Created by David Emery on 1/23/26.
//

import SwiftUI

struct CustomerView: View {
    
    //creating the obj
    var customers: [Customer] = [
        Customer(
            name: "David",
            email: "david@example.com",
            visits: 1,
            ),
        Customer(
            name: "Xander",
            email: "xander@example.com",
            visits: 3,
        )
    ]

    var body: some View {
        List(customers){c in
            HStack{
                VStack(alignment: .leading){
                    Text(c.name)
                    Spacer()
                    Text("\(c.visits) - visits")
                }
                
                Spacer()
                
                if c.visits >= 3 {
                    Text("Loyal")
                        .padding()
                        .background(Color.orange.opacity(0.15))
                        .cornerRadius(6)
                }
            }
        }
        .navigationTitle("Customers")
    }
}

#Preview {
    CustomerView()
}

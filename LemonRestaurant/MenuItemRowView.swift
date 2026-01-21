//
//  MenuItemRowView.swift
//  LemonRestaurant
//
//  Created by David Emery on 1/20/26.
//

import SwiftUI

struct MenuItemRowView: View {
    let name: String
    let price: Double

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(.headline)

                Text("$\(price, specifier: "%.2f")")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }

            Spacer()

            if price > 15 {
                PremiumView()
            }
        }
        .padding(.vertical, 6)
    }
}


//#Preview {
//    MenuItemRowView()
//}

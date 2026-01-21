//
//  PremiumView.swift
//  LemonRestaurant
//
//  Created by David Emery on 1/20/26.
//

import SwiftUI

struct PremiumView: View {
    
    var body: some View {
        HStack{
            Image(systemName: "star.fill")
                .foregroundColor(Color(.yellow))
            Text("Premium")
        }
        .padding()
        .background(Color.orange.opacity(0.15))
        .cornerRadius(6)
    }
}

//#Preview {
//    PremiumView()
//}

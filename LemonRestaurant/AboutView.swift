//
//  AboutView.swift
//  LemonRestaurant
//
//  Created by David Emery on 1/8/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        Text("About Little Lemon")
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.green)
        
        Text("Welcome to Little Lemon, The best Italian restaurant in town! We have the best pasta in town, and the best service. We hope you enjoy your meal!")
            .font(.body)
            .padding()
            .foregroundStyle(.yellow)
        Image(systemName: "fork.knife")
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.green)
    }
}

#Preview {
    AboutView()
}

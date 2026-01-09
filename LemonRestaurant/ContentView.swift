//
//  ContentView.swift
//  LemonRestaurant
//
//  Created by David Emery on 1/8/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "iphone")
                .font(.system(size:50))
                .foregroundStyle(.green)
            Text("Welcome to IOS 101!")
                .font(.title2)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

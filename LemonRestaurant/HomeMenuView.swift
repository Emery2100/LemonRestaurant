//
//  HomeMenuView.swift
//  LemonRestaurant
//
//  Created by David Emery on 1/23/26.
//

import SwiftUI

struct HomeMenuView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Menu view"){
                    MenuView()
                }
                NavigationLink("Reservation"){
                    ReservationForm()
                }
                NavigationLink("Customer list"){
                    CustomerView()
                }
            }
        }
    }
}

#Preview {
    HomeMenuView()
}

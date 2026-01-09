//
//  ReservationForm.swift
//  LemonRestaurant
//
//  Created by David Emery on 1/8/26.
//

import SwiftUI

struct ReservationForm: View {
    //constants
    let restaurantName = "Lemon Restaurant"
    let maxGuest = 10
    let maxChild = 5
        //Variables
    @State private var userName = ""
    @State private var guestCount = 1
    @State private var phoneNumber = ""
    @State private var previewText = ""
    @State private var specialRequests = ""
    @State private var childCount = 1
    
    var body: some View {
        
        Form{
            //header
            Section{
                Text(restaurantName)
                    .font(.title3)
                    .bold()
                Text("Reservation form")
                    .foregroundColor(.secondary)
                    
            }
            
            Section(header: Text("Reservation details")){
                TextField("Name",text: $userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                
                // use a constant
                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...maxGuest)
                
                }
            
            Section(header: Text("Contact")){
                TextField("Phone", text: $phoneNumber)
                    .keyboardType(.numberPad)
            }
            
            Section(header: Text("Optional")){
                TextField("Special Requests",text: $specialRequests)
                Stepper("Children: \(childCount)", value: $childCount, in: 1...maxChild)
            }
            
            Section(header: Text("")){
                Button("Preview reservation"){
                    previewText = """
                        Name: \(userName)
                        Guests: \(guestCount)
                        Children: \(childCount)
                        Special Request: \(specialRequests)
                        Contact: \(phoneNumber)
                        """
                
            }
            
            Section(header: Text("Preview")){
                Text(previewText)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .textSelection(.enabled)
            }
            }
        }
    }
}

#Preview {
    ReservationForm()
}

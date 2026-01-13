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
    @State private var guestCount = 0
    @State private var phoneNumber = ""
    @State private var previewText = ""
    @State private var specialRequests = ""
    @State private var childCount = 0
    
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
                
                if userName.isEmpty{
                    Text("Please enter your name.")
                        .font(.footnote)
                        .foregroundColor(.red)
                }
                
                // use a constant
                Stepper("Guests: \(guestCount)", value: $guestCount, in: 0...maxGuest)
                
                // in a reservation of more >= than 8 guests, display "Large group - we'll do our best to accomodate you." (small text,orange)
                
                if guestCount >= 8 {
                    Text("Large group - we'll do our best to accommodate you.")
                        .font(.footnote)
                        .foregroundColor(.orange)
                }
                Stepper("Children: \(childCount)", value: $childCount, in: 0...maxChild)
            // if we have children display the text: "Kid's menu available"
                
                if childCount > 0 {
                    Section(header:Text("Kids")){
                        Text("Kid's menu available")
                            .font(.footnote)
                    }
                }
            }
            
            Section(header: Text("Contact")){
                TextField("Phone", text: $phoneNumber)
                    .keyboardType(.numberPad)
            }
            
            Section(header: Text("Optional")){
                TextField("Special Requests",text: $specialRequests)
                
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

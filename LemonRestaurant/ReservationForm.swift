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
    @State private var showMessage = false
    
    //1) label for guest
    func guestLabel(_ count:Int) -> String {
        count == 1 ? "Guest" : "Guests"
    }
    func childLabel(_ count:Int) -> String {
        count == 1 ? "Child" : "Children"
    }
    
    // estimation function
    //adults 15.00
    //children 9.00
    func estimateTotal(_ adults: Int, _ children: Int) -> Double{
        let adultPrice = 15.0
        let childPrice = 9.0
        
        return Double(guestCount) * adultPrice + Double(childCount) * childPrice
    }
    
    func totalGuestCount(_ adult: Int, _ child: Int) -> Int{
        let adult = 1
        let child = 1
        
        return (guestCount) * adult + (childCount) * child
    }
    
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
                TextField("Phone", text: $phoneNumber)
                    .keyboardType(.numberPad)
                
                Toggle("Show special text", isOn: $showMessage)
                
                if showMessage{Text("Special requests")
                    
                    TextField("Special Requests",text: $specialRequests)
                }
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
                }.disabled(userName.isEmpty)
                
                
                Section(header: Text("Preview")){
                    Text(previewText)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        .textSelection(.enabled)
                }
            }
            
            Section(header: Text("Summary")){
                HStack{
                    Text("Reservation details")
                        .font(.headline)
                    Spacer()
                    Image(systemName:"text.document")
                }
                HStack{ Text("Name"); Spacer(); Text(userName)}
                HStack{ Text(guestLabel(guestCount)); Spacer(); Text("\(guestCount)")}
                HStack{ Text(childLabel(childCount)); Spacer(); Text("\(childCount)")}
                
                HStack{
                    Text("Party size"); Spacer(); Text("\(totalGuestCount(guestCount, childCount))")
                }
                
                HStack{
                    Text("Estimated total")
                    Spacer()
                    Text("$\(estimateTotal(guestCount, childCount),specifier: "%.2f")")
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(12)
            }// end of summary section
        }
    }
}
    
    #Preview {
        ReservationForm()
    }


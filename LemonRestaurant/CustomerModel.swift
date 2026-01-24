//
//  CustomerModel.swift
//  LemonRestaurant
//
//  Created by David Emery on 1/23/26.
//

import Foundation

class Customer: Identifiable {
    let id = UUID()
    var name: String  // analogy: We need addes ssn to the elements
    var email: String
    var visits: Int

    init(name: String, email: String, visits: Int){
        self.name = name
        self.email = email
        self.visits = visits
    }

    func summary() -> String{
        "\(name) - visits \(visits)"
    }
}

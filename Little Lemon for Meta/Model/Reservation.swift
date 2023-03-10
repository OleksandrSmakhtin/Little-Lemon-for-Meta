//
//  Reservation.swift
//  Little Lemon for Meta
//
//  Created by Oleksandr Smakhtin on 06.01.2023.
//

import Foundation

struct Reservation {
    var restaurant: RestaurantLocation
    var customerName: String
    var customerEmail: String
    var customerPhoneNumber: String
    var reservationDate: Date
    var party: Int
    var specialRequests: String
    var id = UUID()
    
    init(restaurant: RestaurantLocation = RestaurantLocation(),
         customerName: String = "",
         customerEmail: String = "",
         custumerPhoneNumber: String = "",
         reservationDate: Date = Date(),
         party: Int = 1,
         specialRequests: String = "") {
        self.restaurant = restaurant
        self.customerName = customerName
        self.customerEmail = customerEmail
        self.customerPhoneNumber = custumerPhoneNumber
        self.reservationDate = reservationDate
        self.party = party
        self.specialRequests = specialRequests
    }
}

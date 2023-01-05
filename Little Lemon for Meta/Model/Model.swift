//
//  Model.swift
//  Little Lemon for Meta
//
//  Created by Oleksandr Smakhtin on 05.01.2023.
//

import Foundation


class Model: ObservableObject {
    
    let restaurants = [
        Restaurant(city: "Las Vegas",
                           neighborhood: "Downtown",
                           phoneNumber: "(702) 555-9898"),
        Restaurant(city: "Los Angeles",
                           neighborhood: "North Hollywood",
                           phoneNumber: "(213) 555-1453"),
        Restaurant(city: "Los Angeles",
                           neighborhood: "Venice",
                           phoneNumber: "(310) 555-1222"),
        Restaurant(city: "Nevada",
                           neighborhood: "Venice",
                           phoneNumber: "(725) 555-5454"),
        Restaurant(city: "San Francisco",
                           neighborhood: "North Beach",
                           phoneNumber: "(415) 555-1345"),
        Restaurant(city: "San Francisco",
                           neighborhood: "Union Square",
                           phoneNumber: "(415) 555-9813")
    ]
    
    //@Published var reservation = Reservation()
    @Published var displayingReservationForm = false
    //@Published var temporaryReservation = Reservation()
    @Published var followNavigationLink = false
    
    @Published var diplayTabBar = true
    @Published var tabBarChanged = false
    @Published var tabViewSelectedIndex = Int.max {
        didSet {
            tabBarChanged = true
        }
    }
    
}

struct Restaurant: Hashable {
    let city: String
    let neighborhood: String
    let phoneNumber: String
}

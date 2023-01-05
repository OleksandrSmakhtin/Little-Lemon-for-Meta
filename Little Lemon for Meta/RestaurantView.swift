//
//  RestaurantView.swift
//  Little Lemon for Meta
//
//  Created by Oleksandr Smakhtin on 05.01.2023.
//

import SwiftUI

struct RestaurantView: View {
    
    let restaurant: Restaurant
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(restaurant.city)
                .font(.title2)
                .foregroundColor(Color("ColorType1"))
            
            HStack {
                Text(restaurant.neighborhood)
                Text("-")
                Text(restaurant.phoneNumber)
            }
            .font(.caption)
            .foregroundColor(Color("ColorType1"))
            
            
        }
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        let temp = Restaurant(city: "New York", neighborhood: "Downtown", phoneNumber: "+1937457388")
        RestaurantView(restaurant: temp)
    }
}

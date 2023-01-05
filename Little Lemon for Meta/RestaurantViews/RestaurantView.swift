//
//  RestaurantView.swift
//  Little Lemon for Meta
//
//  Created by Oleksandr Smakhtin on 06.01.2023.
//

import SwiftUI

struct RestaurantView: View {
    private var restaurant: RestaurantLocation
    
    init(_ restaurant: RestaurantLocation) {
        self.restaurant = restaurant
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(restaurant.city)
                .font(.title2)
            
            HStack {
                Text(restaurant.neighborhood)
                Text("-")
                Text(restaurant.phoneNumber)
            }
            .font(.caption)
        }
    }
}




struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleRestaurant = RestaurantLocation(city: "Las Vegas", neighborhood: "Downtown", phoneNumber: "(702) 555-9898")
        RestaurantView(sampleRestaurant)
    }
}


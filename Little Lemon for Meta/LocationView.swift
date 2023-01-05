//
//  LocationView.swift
//  Little Lemon for Meta
//
//  Created by Oleksandr Smakhtin on 05.01.2023.
//

import SwiftUI

struct LocationView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack {
                LittleLemonLogo()
                
                
                Text(model.displayingReservationForm ? "Reservation Details" : "Select a location" )
                    .padding([.leading, .trailing], 40)
                    .padding([.top, .bottom], 8)
                    .background(Color("ColorType2"))
                    .foregroundColor(Color("ColorType1"))
                    .cornerRadius(20)
                
                NavigationView {
                    
                    List(model.restaurants, id: \.self) {restaurant in
                        NavigationLink(destination: MainView()) {
                            RestaurantView(restaurant: restaurant)
                        }.listRowBackground(Color("ColorType2"))
                    }
                    .background(Color("BackgroundColor"))
                    .scrollContentBackground(.hidden)
                    .navigationTitle("")
                    .toolbar(.hidden)
                }
                .onDisappear {
                    if model.tabBarChanged { return }
                    model.displayingReservationForm = true
                }
                
                
            }
            
            
            
            
            
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView().environmentObject(Model())
    }
}

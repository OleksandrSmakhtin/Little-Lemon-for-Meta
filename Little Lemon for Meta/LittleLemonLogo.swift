//
//  LittleLemonLogo.swift
//  Little Lemon for Meta
//
//  Created by Oleksandr Smakhtin on 05.01.2023.
//

import SwiftUI

struct LittleLemonLogo: View {
    var body: some View {
        HStack {
            Image("lemon")
                .resizable()
                .frame(width: 50, height: 50)
            Text("LITTLE LEMON")
                .font(.custom("Noteworthy Light", size: 28))
                .foregroundColor(Color("ColorType1"))
            
        }
    }
}

struct LittleLemonLogo_Previews: PreviewProvider {
    static var previews: some View {
        LittleLemonLogo()
    }
}

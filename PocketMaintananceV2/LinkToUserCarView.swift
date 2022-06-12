//
//  LinkToUserCarView.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 10.06.2022.
//

import SwiftUI

struct LinkToUserCarView: View {
    @State private var chosenCar: String?
    var body: some View {
        NavigationLink(destination: UserCarView(userCar: $chosenCar)) {
            VStack{
                Image("car-64")
                Text("My Car")
            }
        }
    }
}

struct LinkToUserCarView_Previews: PreviewProvider {
    static var previews: some View {
        LinkToUserCarView()
    }
}

//
//  UserCarView.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 10.06.2022.
//

import SwiftUI

struct UserCarView: View {
    
    @State private var isActive: Bool = false
    @EnvironmentObject private var userCar: UserManager
    
    let cars = Car.carList()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 50) {
                NavigationLink(
                    destination: MarkView(rootActive: $isActive, cars: cars),
                    isActive: $isActive){
                        Text("Add Car")
                            .shadow(color: .gray, radius: 5, x: 6, y: 2)
                    }
                
                VStack {
                    Image("autoDr")
                        .resizable()
                        .frame(width: 300, height: 150)
                    Text("Your car is \(userCar.chosenCar)")
                        .shadow(color: .gray, radius: 5, x: 6, y: 2)
                }
                
                VStack(alignment:.leading ,spacing: 20) {
                    Text("Mileage ")
                    Text("Engine oil")
                    Text("Fuel type")
                    Text("Transmission oil")
                }
                .foregroundColor(.black)
                .shadow(color: .gray, radius: 5, x: 6, y: 2)
            }
            .navigationBarHidden(true)
        }
    }
}

struct UserCarView_Previews: PreviewProvider {
    static var previews: some View {
        UserCarView()
            .environmentObject(UserManager())
    }
}

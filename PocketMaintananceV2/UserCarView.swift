//
//  UserCarView.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 10.06.2022.
//

import SwiftUI

struct UserCarView: View {
    //первичные данные
    let cars = Car.carList()
    
    @Binding var userCar: String?
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
            VStack(alignment: .leading, spacing: 50) {
                HStack{
                    NavigationLink(destination: MarkView(cars: cars, chosenCar: $userCar)){
                        Image(systemName: "plus")
                    }
                }
                VStack {
                    Image("UserCar")
                        .resizable()
                    .frame(width: 300, height: 150)
                    if let chosenCar = userCar {
                        Text(chosenCar)
                    }
                }
                VStack(alignment:.leading ,spacing: 20) {
                    Text("Your milleage")
                    Text("Your engine oil")
                    Text("Your fuel")
                    Text("Your transmission")
                    Text("Note")
                }
            }
            .onAppear{
                userCar = UserDefaults.standard.string(forKey: "chosenCar")
            }
    }
}

struct UserCarView_Previews: PreviewProvider {
    static var previews: some View {
        UserCarView(userCar: .constant(""))
    }
}

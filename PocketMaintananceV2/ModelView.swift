//
//  ModelView.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 10.06.2022.
//

import SwiftUI

struct ModelView: View {
    var carModel: [String] = []
    @State private var selection: Int = 0
    @Binding var chosenUserCar: String?
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
            VStack{
                Picker(selection: $selection, label: Text("")) {
                    ForEach(0..<carModel.count, id: \.self) {index in
                        Text("\(carModel[index])")
                            .font(.title)
                    }
                }
                .pickerStyle(.wheel)
                
                List {
                    NavigationLink(destination: UserCarView(userCar: $chosenUserCar)){
                        Button(action: saveCar){
                           Text("Save")
                        }
                    }
                }
            }
            
        
    }
    private func saveCar() {
        let chosenCar = carModel[selection]
        print(chosenCar)
        chosenUserCar = chosenCar
        UserDefaults.standard.set(chosenUserCar, forKey: "chosenCar")
    }
}

//extension ModelView {
//    func saveCar() {
//        let myCar = UserDefaults.standard.set(carModel, forKey: "chosenCar")
//        print(myCar)
//    }
//}

struct ModelView_Previews: PreviewProvider {
    static var previews: some View {
        ModelView(chosenUserCar: .constant(""))
    }
}

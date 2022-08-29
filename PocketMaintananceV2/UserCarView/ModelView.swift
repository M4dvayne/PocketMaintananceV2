//
//  ModelView.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 10.06.2022.
//

import SwiftUI

struct ModelView: View {
    @State private var selection: Int = 0
    @Binding var rootActive: Bool
    @AppStorage("chosenCar") var selectedCar: String = ""
    @EnvironmentObject private var userCar: UserManager
    
    var carModel: [String] = []
    
    var body: some View {
        VStack{
            Picker(selection: $selection, label: Text("")) {
                ForEach(0..<carModel.count, id: \.self) {index in
                    Text("\(carModel[index])")
                        .foregroundColor(.black)
                        .font(.title)
                        .shadow(color: .gray, radius: 5, x: 6, y: 2)
                }
            }
            .pickerStyle(.wheel)
            Button(action: saveCar){
                Text("Save")
            }
        }
    }
    
    private func saveCar() {
        rootActive = false
        selectedCar = carModel[selection]
        userCar.chosenCar = selectedCar
    }
}

struct ModelView_Previews: PreviewProvider {
    static var previews: some View {
        ModelView(rootActive: .constant(false))
            .environmentObject(UserManager())
    }
}

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
    @Binding var rootActive: Bool
    
   @AppStorage("chosenCar") var selectedCar: String = ""
   @EnvironmentObject private var userCar: UserManager
    
    var body: some View {
        ZStack {
            Color(red: 17/255, green: 17/255, blue: 17/255, opacity: 1)
                .ignoresSafeArea()
            VStack{
                Picker(selection: $selection, label: Text("")) {
                    ForEach(0..<carModel.count, id: \.self) {index in
                        Text("\(carModel[index])")
                            .foregroundColor(.white)
                            .font(.title)
                            
                    }
                }
                .pickerStyle(.wheel)
                
            
                Button(action: saveCar){
                    Text("Save")
                }
            }
        }
    }
    private func saveCar() {
        rootActive = false
        selectedCar = carModel[selection]
        print(selectedCar)
        userCar.chosenCar = selectedCar
        print(userCar.chosenCar)
        userCar.reloadView.toggle()
        
    }
}


struct ModelView_Previews: PreviewProvider {
    static var previews: some View {
        ModelView(rootActive: .constant(false))
            .environmentObject(UserManager())
    }
}

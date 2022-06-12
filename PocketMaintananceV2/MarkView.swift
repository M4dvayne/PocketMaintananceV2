//
//  MarkView.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 10.06.2022.
//

import SwiftUI

struct MarkView: View {
 //обязательно для инициализации
    let cars: [Car]!
    @Binding var chosenCar: String?
    
    var body: some View {
        List(cars) { car in
            //передал массив на другой экран
            NavigationLink(destination: ModelView(carModel: car.carModel, chosenUserCar: $chosenCar)){
            Text("\(car.carMark)")
            }
        }
    }
}

struct MarkView_Previews: PreviewProvider {
    static var previews: some View {
        MarkView(cars: Car.carList(), chosenCar: .constant(""))
    }
}

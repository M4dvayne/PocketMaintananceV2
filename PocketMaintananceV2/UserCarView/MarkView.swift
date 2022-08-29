//
//  MarkView.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 10.06.2022.
//

import SwiftUI

struct MarkView: View {
    
    @Binding var rootActive: Bool
    let cars: [Car]!
    
    var body: some View {
        List(cars) { car in
            NavigationLink(destination: ModelView(rootActive: $rootActive, carModel: car.carModel)){
                Text("\(car.carMark)")
            }
            .shadow(color: .gray, radius: 6, x: 4, y: 2)
        }
    }
}

struct MarkView_Previews: PreviewProvider {
    static var previews: some View {
        MarkView(rootActive: .constant(false), cars: Car.carList())
    }
}

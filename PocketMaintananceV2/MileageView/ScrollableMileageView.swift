//
//  ScrollableMileageView.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 25.06.2022.
//

import SwiftUI

struct ScrollableMileageView: View {
    @State private var isSelected = false
    
    var body: some View {
        ZStack(alignment: .leading){
            MaintenanceItemsView()
                .shadow(color: .gray, radius: 5, x: 6, y: 2)
                .frame(width: 70, height: 520, alignment: .leading)
            VStack() {
                ScrollView([.horizontal], showsIndicators: false) {
                    HStack(spacing: 47){
                        Text("15k")
                        Text("30k")
                        Text("45k")
                        Text("60k")
                        Text("75k")
                        Text("  90k")
                        Text("105k")
                        Text("120k")
                        Text("150k")
                    }
                    .shadow(color: .gray, radius: 5, x: 6, y: 2)
                    .frame(width: 700, height: 20)
                    .padding(.trailing, 100)
                    .offset(x: 5, y: 5)
                    
                    CheckBoxesView()
                        .padding(.trailing, 100)
                        .shadow(color: .gray, radius: 5, x: 6, y: 2)
                }
            }
            .offset(x: 80, y: 5)
        }
    }
}


struct MilleageView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollableMileageView()
    }
}


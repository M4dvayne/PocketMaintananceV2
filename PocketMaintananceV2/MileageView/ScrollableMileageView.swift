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
        ZStack{
            MaintenanceItemsView()
            VStack {
                ScrollView([.horizontal], showsIndicators: false) {
                    HStack(spacing: 20){
                        Text("15 тыс.км")
                        Text("30 тыс.км")
                        Text("45 тыс.км")
                        Text("60 тыс.км")
                        Text("75 тыс.км")
                        Text("90 тыс.км")
                        Text("105 тыс.км")
                        Text("120 тыс.км")
                        Text("150 тыс.км")
                    }
                    .offset(x: 10)
                    .font(.callout)
                    CheckBoxesView()
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


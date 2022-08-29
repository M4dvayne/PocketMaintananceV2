//
//  MaintenanceItemsView.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 25.06.2022.
//

import SwiftUI

struct MaintenanceItemsView: View {
    
    let maintenanceItem = MaintenanceItem()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 28){
            Text(maintenanceItem.beltItem)
            Text(maintenanceItem.breakItem)
            Text(maintenanceItem.coolingItem)
            Text(maintenanceItem.engineItem)
            Text(maintenanceItem.gearItem)
            Text(maintenanceItem.ignitionItem)
            Text(maintenanceItem.lightItem)
            Text(maintenanceItem.wheelsItem)
            Text(maintenanceItem.filterItem)
            Text(maintenanceItem.fuelItem)
        }
        .frame(width: 70, height: 400)
        .padding(EdgeInsets(
            top: 60,
            leading: 0,
            bottom: 20,
            trailing: 230
        ))
    }
}

struct MaintenanceItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MaintenanceItemsView()
    }
}






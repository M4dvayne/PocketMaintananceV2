//
//  PocketMaintananceV2App.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 10.06.2022.
//

import SwiftUI

@main
struct PocketMaintananceV2App: App{
    
    @StateObject private var userCar = UserManager()
    
    var body: some Scene {
        WindowGroup {
            
            ContentView()
                .environmentObject(userCar)
        }
    }
}

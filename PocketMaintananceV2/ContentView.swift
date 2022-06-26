//
//  ContentView.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 10.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      //  NavigationView{
        TabView{
            UserCarView()
                .tabItem {
                    Image(systemName: "car")
                    Text("My Car")
                }
            ScrollableMileageView()
                .tabItem {
                    Image(systemName: "checkmark.square")
                    Text("Mileage")
                }
            TroubleShootingView()
                .tabItem {
                    Image(systemName: "thermometer.snowflake")
                    Text("TroubleShooting")
                }
            LifeHackView()
                .tabItem {
                    Image(systemName: "l.square")
                    Text("Lifehacks")
                }
            NoteView()
                .tabItem{
                    Image(systemName: "doc.text.fill")
                    Text("My note")
                }
        }
   // }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

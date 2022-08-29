//
//  LifeHackView.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 24.06.2022.
//

import SwiftUI

struct LifeHackView: View {
    let lifeHacksInfo = LifeHacks.getLifeHacks()
    
    var body: some View {
        List(lifeHacksInfo, children: \.lifeHacks) {lifeHack in
            Image(systemName: lifeHack.icon ?? "")
                .renderingMode(.original)
                .shadow(color: .gray, radius: 5, x: 6, y: 2)
            
            Text(lifeHack.title ?? "")
                .shadow(color: .gray, radius: 5, x: 6, y: 2)
        }
    }
}

struct LifeHackView_Previews: PreviewProvider {
    static var previews: some View {
        LifeHackView()
    }
}

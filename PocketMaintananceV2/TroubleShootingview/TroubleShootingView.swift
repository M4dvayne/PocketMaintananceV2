//
//  TroubleShootingView.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 25.06.2022.
//

import SwiftUI

struct TroubleShootingView: View {
    
    let troubles = Troubles.getTroubles()
        var body: some View {
            List(troubles, children: \.troubles) { trouble in
                Text(trouble.title ?? "")
            }
        }
}

struct TroubleShootingView_Previews: PreviewProvider {
    static var previews: some View {
        TroubleShootingView()
    }
}

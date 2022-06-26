//
//  UserManager.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 11.06.2022.
//

import Combine
import SwiftUI

class UserManager: ObservableObject {
    @Published var reloadView: Bool = false
    @AppStorage("myCar") var chosenCar: String = ""
}


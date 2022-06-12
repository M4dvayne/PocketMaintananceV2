//
//  UserManager.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 11.06.2022.
//

import Foundation

final class UserManager: ObservableObject {
    
    @Published var user = User()
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
    
}


struct User: Codable {
    var userCar: String = ""
}

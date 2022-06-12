//
//  DataManager.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 10.06.2022.
//

import Foundation
import SwiftUI


class DataManager {
    static let shared = DataManager()
    
    @AppStorage("userCar") private var userCar: Data?
    
    func saveUser(user: User) {
        userCar = try? JSONEncoder().encode(user)
    }
    
    let audi = "Audi"
    let bmw = "BMW"
    let chery = "Chery"
    let chevrolet = "Chevrolet"
    let citroen = "Citroen"
    let daewoo = "Daewoo"
    let ford = "Ford"
    let honda = "Honda"
    let huyndai = "Huyndai"
    let kia = "Kia"
    let lexus = "Lexus"
    let mazda = "Mazda"
    let mersedes = "Mersedes-Benz"
    let mitsubishi = "Mitsubishi"
    let nissan = "Nissan"
    let opel = "Opel"
    let renault = "Renault"
    let skoda = "Skoda"
    let subaru = "Subaru"
    let suzuki = "Suzuki"
    let toyota = "Toyota"
    let volkswagen = "Volkswagen"
    let vaz = "VAZ"
    
    let audiModel = ["Audi 100"," Audi 80", "Audi A1","Audi A3"," Audi A5 ","Audi A7 ","Audi A8 ","Audi Q3","Audi Q5 ","Audi Q7","Audi Q8"]
    
    let bmwModel = ["1 Series", "3 Series", "5 Series", "7 Series", "X1", "X3", "X5", "X6", "X7"]
    
    let cheryModel = ["Amulet(A15)", "Bonus(A13)", "Fora(A21)", "IndiS(S18D)", "Kimo(A1)", "M11(A3)", "Sweet(Q3)", "Tiggo 4", "Tiggo 7 Pro", "Tiggo 8", "Tiggo 8 Pro", "Tiggo (T11)"]
    
    let chevroletModel = ["Aveo", "Camaro", "Captiva", "Cobalt", "Cruze", "Lacetti" ,"Lanos", "Niva", "Spark"]
    
    let citroenModel = ["Berlingo", "C3", "C4", "C5", "Jumper"]
    
    let daewooModel = ["Gentra", "Matiz", "Nexia"]
    
    let fordModel = ["C-MAX", "EcoSport", "Escape", "Escort", "Explorer", "F-150", "Fiesta", "Focus", "Fusion", "Kuga", "Mondeo", "Mustang", "Transit"]
    
    let hondaModel = ["Accord", "Civic", "CR-V", "Freed", "HR-V", "Odyssey", "Shuttle", "Stream", "Vezel"]
    
    let huyndaiModel = ["Accent", "Creta", "Elantra", "Getz", "Grand Starex", "H-1", "i20", "i30", "i40", "ix35", "Matrix", "Porter", "Santa Fe", "Solaris", "Sonata", "Tucson"]
    
    let kiaModel = ["Carnival", "Ceed GT", "Cerato", "Magentis", "Mohave", "Optima", "Picanto", "Rio", "Rio X", "Rio X-Line", "Seltos", "Sorento", "Sorento Prime", "Soul", "Spectra", "Sportage"]
    
    let lexusModel = ["ES", "GS", "GX", "IS", "LS", "LX", "NX", "RX"]
    
    let mazdaModel = ["3", "323", "6", "626", "CX-3", "CX-5", "CX-7", "CX-8", "CX-9"]
    
    let mersedesModel = ["A-Class", "B-Class", "C-Class", "CLA-Class", "CLS-Class", "E-Class AMG", "G-Class", "G-Class AMG", "GL-Class", "GLA-Class", "GLB-Class", "GLC-Class", "GLK-Class", "M-Class", "S-Class", "Sprinter", "Vito"]
    
    let mitsubishiModel = ["ASX", "Colt", "Galant", "Lancer", "Outlander", "Pajero", "Pajero Sport"]
    
    let nissanModel = ["Almera", "Juke", "Leaf", "March", "Maxima", "Micra", "Murano", "Note", "Pathfinder", "Patrol", "Primera", "Qashqai", "Serena", "Skyline", "Teana", "Terano", "Tiida", "X-Trail" ]
    
    let opelModel = ["Antara", "Astra", "Astra GTC", "Corsa", "Insignia", "Meriva", "Mokka", "Vectra", "Zafira"]
    
    let renaultModel = ["Arkana", "Duster", "Fluence", "Kaptur", "Laguna", "Logan", "Logan Stepway", "Megane", "Sandero", "Sandero Stepway", "Symbol"]
    
    let skodaModel = ["Fabia", "Karoq", "Kodiaq", "Octavia", "Rapid", "Superb", "Yeti"]
    
    let subaruModel = ["Forester", "Impreza", "Legacy", "Outback", "WRX", "XV"]
    
    let suzukiModel = ["Grand Vitara", "Jimny", "Liana", "Solio", "Swift", "SX4", "Vitara"]
    
    let toyotaModel = ["Alphard", "Aqua", "Auris", "Avensis", "C-HR", "Caldina", "Camry", "Carina", "Chaser", "Corolla", "Crown", "Estima", "Fortuner", "Harrier", "Hiace", "Highlander", "Hilux", "Land Cruiser", "Land Cruiser Prado", "Mark II", "Prius", "RAV4", "Vitz", "Yaris"]
    
    let volkswagenModel = ["Amarok", "Caddy", "Caravelle", "Crafter", "Golf 2", "Golf Plus", "Jetta", "Multivan", "Passat CC", "Polo", "Taos", "Tiguan", "Touareg", "Transporter"]
    
    let vazModel = ["Niva", "Granta", "Kalina", "Largus", "Priora", "Vesta", "XRAY"]
    
    init() {}
    
}

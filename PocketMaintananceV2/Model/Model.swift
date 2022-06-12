//
//  Model.swift
//  PocketMaintananceV2
//
//  Created by Вячеслав Кремнев on 10.06.2022.
//

import Foundation



struct Car: Identifiable, Hashable {
    let carMark: String
    let carModel: [String]
    let id = UUID()
    
    static func carList() -> [Car] {
        [
        Car(carMark: DataManager.shared.audi, carModel: DataManager.shared.audiModel),
        
        Car(carMark: DataManager.shared.bmw, carModel: DataManager.shared.bmwModel),
        
        Car(carMark: DataManager.shared.chery, carModel: DataManager.shared.cheryModel),
        
        Car(carMark: DataManager.shared.chevrolet, carModel: DataManager.shared.chevroletModel),
        
        Car(carMark: DataManager.shared.citroen, carModel: DataManager.shared.citroenModel),
        
        Car(carMark: DataManager.shared.daewoo, carModel: DataManager.shared.daewooModel),
        
        Car(carMark: DataManager.shared.ford, carModel: DataManager.shared.fordModel),
        
        Car(carMark: DataManager.shared.honda, carModel: DataManager.shared.hondaModel),
        
        Car(carMark: DataManager.shared.huyndai, carModel: DataManager.shared.huyndaiModel),
        
        Car(carMark: DataManager.shared.kia, carModel: DataManager.shared.kiaModel),
        
        Car(carMark: DataManager.shared.lexus, carModel: DataManager.shared.lexusModel),
        
        Car(carMark: DataManager.shared.mazda, carModel: DataManager.shared.mazdaModel),
        
        Car(carMark: DataManager.shared.mersedes, carModel: DataManager.shared.mersedesModel),
        
        Car(carMark: DataManager.shared.mitsubishi, carModel: DataManager.shared.mitsubishiModel),
        
        Car(carMark: DataManager.shared.nissan, carModel: DataManager.shared.nissanModel),
        
        Car(carMark: DataManager.shared.opel, carModel: DataManager.shared.opelModel),
        
        Car(carMark: DataManager.shared.renault, carModel: DataManager.shared.renaultModel),
        
        Car(carMark: DataManager.shared.skoda, carModel: DataManager.shared.skodaModel),
        
        Car(carMark: DataManager.shared.subaru, carModel: DataManager.shared.subaruModel),
        
        Car(carMark: DataManager.shared.toyota, carModel: DataManager.shared.toyotaModel),
        
        Car(carMark: DataManager.shared.volkswagen, carModel: DataManager.shared.volkswagenModel),
        
        Car(carMark: DataManager.shared.vaz, carModel: DataManager.shared.vazModel),
        ]
    }
}

struct MaintenanceItem {
    let beltItem = "Belt"
    let engineItem = "Engine"
    let gearItem = "Gear"
    let breakItem = "Break"
    let fuelItem = "Fuel"
    let lightItem = "Light"
    let filterItem = "Filter"
    let ignitionItem = "Ignition"
    let coolingItem = "Cooling"
    let wheelsItem = "Wheels"
}



struct Troubles: Identifiable {
    let title: String?
    let icon: String?
    var description: String?
    let id = UUID()
    var troubles: [Troubles]?
    
    static func getTroubles() -> [Troubles] {
        return [
        Troubles(title: "Система охлаждения",
                 icon: "image",
                 description: nil,
                 troubles: [
        Troubles(title: "Перегрев двигателя", icon: "image", description: "недостаточное количество антифриза;ослабление натяжки водяной помпы;нарушение герметичности помпы;неисправность вентилятора и/или элементов его привода;термостат заклинил в закрытом положении;внешнее и/или внутреннее засорение радиатора охлаждения;засорение каналов и/или патрубков системы охлаждения"),
        Troubles(title: "Переохлаждение двигателя", icon: "image", description: "выход из строя термостата в открытом положении;проблемы с вентилятором и/или элементов его привода (механика, электро, гидравлика);неисправность датчика температуры."),
        Troubles(title: "Утечка охлаждающей жидкости наружу", icon: "image", description: "нарушение герметичности внешних каналов или патрубков;повреждение целостности патрубков, хомутов или других проводников антифриза;разгерметизация помпы;разгерметизация радиатора охлаждения;повреждение (трещины) в рубашке охлаждения."),
        Troubles(title: "Утечка охлаждающей жидкости внутрь", icon: "image", description: "повреждение элементов рубашки охлаждения;прогорание прокладки головки блока цилиндров.")
        ]),
        Troubles(title: "Двигатель",
                 icon: "image",
                 description: nil,
                 troubles: [
                 Troubles(title: "Потеря динамики разгона",
                          icon: "image",
                          description: "", troubles:[Troubles(title: "-Выход из строя.\n -Некорректная работа систем питания и зажигания. \n -Использование некондиционного топлива. \n -Неисправности трансмиссии(пробуксовка сцепления) \n-Высокое противодавление выхлопных газов в выпускном тракте(забит катализатор).", icon: "")]),
                 Troubles(title: "Чрезмерный расход масла",
                          icon: "image",
                          description: "Износ цилиндро-поршневой группы; Выход из строя маслосъемных колпачков; Закоксовывание канала вентиляции картера"),
                 Troubles(title: "Низкое давление масла",
                          icon: "image",
                          description: "Нехватка масла; Забит масляный фильтр; Разжижение масла антифризом через пробитую прокладку головки блока;Засорение масляных каналов"),
                 Troubles(title: "Неустойчивая работа на холостом ходу",
                          icon: "image",
                          description: "пропуск зажигания вызванный изношенными свечами или неисправными катушками зажигания;Неисправна топливная система(низкое давление топлива);подсос воздуха"),
                 Troubles(title: "Нагар на свечах",
                          icon: "image",
                          description: "Переобогащение топливно-воздушной смеси;Попадание на свечи масла;попадание антифриза в камеру сгорания")
                 ])
        ]
    }
}

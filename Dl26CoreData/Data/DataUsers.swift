//
//  DataUsers.swift
//  Dl26CoreData
//
//  Created by Daniil Litvinov on 06.11.2022.
//

import Foundation
import UIKit

class DataUsers {
        
    var array = [Model]()
    
    func addPersons() {
        array.append(Model(season: "Зима", data: "1/12", image: UIImage(named: "zima")))
        array.append(Model(season: "Весна", data: "1/03", image: UIImage(named: "vesna")))
        array.append(Model(season: "Лето", data: "1/06", image: UIImage(named: "leto")))
        array.append(Model(season: "Осень", data: "1/09", image: UIImage(named: "osen")))

    }
    
}




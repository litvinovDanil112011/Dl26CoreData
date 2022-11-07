//
//  AddArray.swift
//  Dl26CoreData
//
//  Created by Daniil Litvinov on 07.11.2022.
//

import Foundation

extension MainScreenViewConroller {
    func addArray(string: String) {
        data.array.append(Model(season: string, data: string, image: nil))
    }
}

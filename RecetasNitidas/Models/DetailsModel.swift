//
//  DetailsModel.swift
//  RecetasNitidas
//
//  Created by PABLO CRUZ MENDEZ on 30/11/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import Foundation

class DetailsModel{
    var name: String?
    var img: String?
    var lvl: String?
    var desc: String?
    var time: String?
    var ingredients: String?
    
    init(name: String, img: String, lvl: String, desc: String, time: String, ingredients: String){
        self.name = name
        self.img = img
        self.lvl = lvl
        self.desc = desc
        self.time = time
        self.ingredients = ingredients
    }
}

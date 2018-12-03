//
//  RecipeModel.swift
//  RecetasNitidas
//
//  Created by PABLO CRUZ MENDEZ on 28/11/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import Foundation

class RecipeModel{
    var name: String?
    var img: String?
    var lvl: String?
    var detailsModel: DetailsModel?
    
    init(name: String, img: String, lvl: String, detailsModel: DetailsModel){
        self.name = name
        self.img = img
        self.lvl = lvl
        self.detailsModel = detailsModel
    }
}

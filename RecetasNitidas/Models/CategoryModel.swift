//
//  CategoryModel.swift
//  RecetasNitidas
//
//  Created by PABLO CRUZ MENDEZ on 28/11/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import Foundation

class CategoryModel{
    var title: String?
    var img: String?
    var num: String?
    var recipeModel: [RecipeModel]
    
    init(title: String, img: String, num: String, recipeModel: [RecipeModel]){
        self.title = title
        self.img = img
        self.num = num
        self.recipeModel = recipeModel
    }
}

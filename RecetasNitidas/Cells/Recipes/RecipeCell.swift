//
//  RecipeCell.swift
//  RecetasNitidas
//
//  Created by PABLO CRUZ MENDEZ on 28/11/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {


    @IBOutlet var lblRecipe: UILabel!
    @IBOutlet var lblLvl: UILabel!
    @IBOutlet var imgRecipe: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

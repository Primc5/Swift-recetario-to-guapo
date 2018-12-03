//
//  DetailsView.swift
//  RecetasNitidas
//
//  Created by PABLO CRUZ MENDEZ on 30/11/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit

class DetailsView: UIViewController {

    @IBOutlet var lblName: UILabel?
    @IBOutlet var lblLvl: UILabel?
    @IBOutlet var imgDetail: UIImageView?
    @IBOutlet var lblDesc: UILabel?
    @IBOutlet var lblTime: UILabel?
    @IBOutlet var lblIngredents: UILabel?
    
    var detailModel: DetailsModel?
    
    convenience init(detailModel: DetailsModel){
        self.init()
        print(detailModel.name!)
        self.detailModel = detailModel
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        self.lblName?.text? = (detailModel?.name!)!
        self.lblLvl?.text? = (detailModel?.lvl!)!
        self.imgDetail?.sd_setImage(with: URL(string: (detailModel?.img!)!), placeholderImage: UIImage(named: "Recipe"), options: .cacheMemoryOnly, completed: nil)
        self.lblDesc?.text? = (detailModel?.desc!)!
        self.lblTime?.text? = "Tempo: " + (detailModel?.time!)!
        self.lblIngredents?.text? = (detailModel?.ingredients!)!
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

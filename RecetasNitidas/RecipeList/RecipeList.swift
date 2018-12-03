//
//  RecipeList.swift
//  RecetasNitidas
//
//  Created by PABLO CRUZ MENDEZ on 28/11/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit

class RecipeList: UIViewController {

    let searchController = UISearchController(searchResultsController: nil)
    @IBOutlet var tableView: UITableView!
    internal var recipemodel: [RecipeModel] = []
     internal var recipesfiltered: [RecipeModel] = []

    convenience init(recipemodel: [RecipeModel]){
        self.init()
        self.recipemodel = recipemodel
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundView = UIImageView(image: UIImage(named: "background"))
        registrarCellsRecipes()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search..."
        navigationItem.searchController = searchController
        definesPresentationContext = true
        navigationItem.hidesSearchBarWhenScrolling = false
        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.
    }
    
    internal func searchBarIsEmpty() -> Bool{
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    internal func isFiltering() -> Bool{
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    internal func filterContentForSearchText(searchText: String){
        recipesfiltered = recipemodel.filter({ (arecipes: RecipeModel) -> Bool in
            return (arecipes.name?.lowercased().contains((searchText.lowercased())))!
        })
        tableView.reloadData()
    }
    
    private func loadRecipes(info: DetailsModel){
        let navigationControler = DetailsView(detailModel: info)
        navigationController?.pushViewController(navigationControler, animated: true)
    }
    
    private func registrarCellsRecipes(){
        let identifier = "RecipeCell"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: identifier)
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

extension RecipeList: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering(){
            return recipesfiltered.count
        }
        return recipemodel.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(recipemodel.count)
        
        let cell: RecipeCell = (tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as? RecipeCell)!
        if isFiltering(){
            let cellRow = recipesfiltered[indexPath.row]
            cell.lblRecipe.text? = cellRow.name!
            cell.lblLvl.text? = cellRow.lvl!
                        cell.imgRecipe.sd_setImage(with: URL(string: cellRow.img!), placeholderImage: UIImage(named: "Recipe"), options: .cacheMemoryOnly, completed: nil)
            cell.backgroundColor = .clear
            cell.backgroundColor = UIColor(white: 1, alpha: 0.5)
            cell.selectionStyle = .none
        }else{
            let cellRow = recipemodel[indexPath.row]
            cell.lblRecipe.text? = cellRow.name!
            cell.imgRecipe.sd_setImage(with: URL(string: cellRow.img!), placeholderImage: UIImage(named: "Recipe"), options: .cacheMemoryOnly, completed: nil)
            cell.lblLvl.text? = cellRow.lvl!
            cell.backgroundColor = .clear
            cell.backgroundColor = UIColor(white: 1, alpha: 0.5)
            cell.selectionStyle = .none
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("You selected cell number: \(indexPath.row)!")
        if isFiltering(){
            loadRecipes(info: recipesfiltered[indexPath.row].detailsModel!)
        }else {
            loadRecipes(info: recipemodel[indexPath.row].detailsModel!)
        }
        
    }
    
}

extension RecipeList: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController){
        filterContentForSearchText(searchText: searchController.searchBar.text!)
    }
}

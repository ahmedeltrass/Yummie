//
//  DishListViewController.swift
//  Ymmuie
//
//  Created by Ahmed Eltrass on 22/11/2022.
//

import UIKit

class DishListViewController: UIViewController {
    var catagory: DishCatagory!
    @IBOutlet weak var tableView: UITableView!
    var dishes : [DishPopular] = [
        .init(id: "id1", name: "Garrie", description: "This is the best I have ever tested", image:"https://picsum.photos/100/200", calories: 34),
        .init(id: "id1", name: "Indomie", description: "This is the best I have ever tested This is the best I have ever tested This is the best I have ever tested This is the best I have ever testedThis is the best I have ever tested", image:"https://picsum.photos/100/200", calories: 314),
        .init(id: "id1", name: "pizza", description: "This is the best I have ever tested", image:"https://picsum.photos/100/200", calories: 1004)
    
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = catagory.name
      registerCell()
        
    }
    private func registerCell(){
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    
   
}
extension DishListViewController : UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
       
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailsViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    
}

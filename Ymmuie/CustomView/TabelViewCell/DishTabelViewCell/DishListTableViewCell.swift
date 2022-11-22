//
//  DishListTableViewCell.swift
//  Ymmuie
//
//  Created by Ahmed Eltrass on 22/11/2022.
//

import UIKit

class DishListTableViewCell: UITableViewCell {
    static let identifier = "DishListTableViewCell"
    @IBOutlet weak var dishImageView: UIImageView!
    
    @IBOutlet weak var dishTitleLbl: UILabel!
    
    @IBOutlet weak var dishDescriptionLbl: UILabel!
    
    func setup(dish :DishPopular){
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        dishTitleLbl.text = dish.name
        dishDescriptionLbl.text = dish.description
        
    }
}

//
//  PopularCollectionViewCell.swift
//  Ymmuie
//
//  Created by Ahmed Eltrass on 21/11/2022.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var populatTitleLbl: UILabel!
    
    @IBOutlet weak var popularImageView: UIImageView!
    
    @IBOutlet weak var populareCaloriesLbl: UILabel!
    @IBOutlet weak var popularDescriptionLbl: UILabel!
    static let identifierP = String(describing:PopularCollectionViewCell.self )
    func setUP(dish : DishPopular){
        populatTitleLbl.text = dish.name
        popularImageView.kf.setImage(with:dish.image?.asUrl)
        populareCaloriesLbl.text = dish.formattedCalories
        popularDescriptionLbl.text = dish.description
        
    }
}

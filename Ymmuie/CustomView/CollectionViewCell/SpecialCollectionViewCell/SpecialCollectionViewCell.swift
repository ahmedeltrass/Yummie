//
//  SpecialCollectionViewCell.swift
//  Ymmuie
//
//  Created by Ahmed Eltrass on 22/11/2022.
//

import UIKit

class SpecialCollectionViewCell: UICollectionViewCell {
  static  let identifer = String(describing:SpecialCollectionViewCell.self)
    @IBOutlet weak var specialImageView: UIImageView!
    
    @IBOutlet weak var specialTitleLbl: UILabel!
    @IBOutlet weak var specialDescriptionLbl: UILabel!
    @IBOutlet weak var specialCalories: UILabel!
    func setUp (dish :DishPopular){
        specialImageView.kf.setImage(with: dish.image?.asUrl)
        specialTitleLbl.text = dish.name
        specialDescriptionLbl.text = dish.description
        specialCalories.text = dish.formattedCalories
    }

}

//
//  CatagoryCollectionViewCell.swift
//  Ymmuie
//
//  Created by Ahmed Eltrass on 21/11/2022.
//

import UIKit
import Kingfisher
class CatagoryCollectionViewCell: UICollectionViewCell {
   static let identifier = String(describing:CatagoryCollectionViewCell.self )

    @IBOutlet weak var catagoryImageView: UIImageView!
    @IBOutlet weak var catagoryTitleLbl: UILabel!
    func setup( catagory : DishCatagory){
        catagoryTitleLbl.text = catagory.name
        catagoryImageView.kf.setImage(with:catagory.image?.asUrl)
    }
}

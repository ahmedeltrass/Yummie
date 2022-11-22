//
//  OnboardingCollectionViewCell.swift
//  Ymmuie
//
//  Created by Ahmed Eltrass on 20/11/2022.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideDescripitonLbl: UILabel!
    
    
    func setUP(_ slide : OnboardingSlide){
        slideImageView.image = slide.imageViwe
        slideTitleLbl.text = slide.title
        slideDescripitonLbl.text = slide.descripition
        
    }
}

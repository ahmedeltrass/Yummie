//
//  DishDetailsViewController.swift
//  Ymmuie
//
//  Created by Ahmed Eltrass on 22/11/2022.
//

import UIKit

class DishDetailsViewController: UIViewController {
  
    @IBOutlet weak var dishImageView: UIImageView!
    
    @IBOutlet weak var dishTitleLbl: UILabel!
    
    @IBOutlet weak var dishCaloriesLbl: UILabel!
    
    @IBOutlet weak var dishDescriptionLbl: UILabel!
    @IBOutlet weak var dishTextField: UITextField!
    
    var dish :DishPopular!
    override func viewDidLoad() {
        super.viewDidLoad()
     popularView()
        // Do any additional setup after loading the view.
    }
    private func  popularView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        dishTitleLbl.text = dish.name
        dishDescriptionLbl.text = dish.description
        dishCaloriesLbl.text = dish.formattedCalories
    }
    
    @IBAction func dishPlaceOrderBtn(_ sender: UIButton) {
    }
    
  
    

}

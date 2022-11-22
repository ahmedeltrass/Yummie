//
//  UIView+Extentions.swift
//  Ymmuie
//
//  Created by Ahmed Eltrass on 20/11/2022.
//

import UIKit
extension UIView {
   @IBInspectable var cornerRedius:CGFloat{
        get{
            return cornerRedius
        }
        set{
            self.layer.cornerRadius = newValue
        }
    }
}

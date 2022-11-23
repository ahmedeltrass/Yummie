//
//  UIController+ectentions.swift
//  Ymmuie
//
//  Created by Ahmed Eltrass on 22/11/2022.
//

import UIKit
extension UIViewController {
    static var identifier :String {
        return String(describing: self)
    }
    static func instantiate() -> Self {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        return storybord.instantiateViewController(identifier: identifier) as! Self
    }
    
}

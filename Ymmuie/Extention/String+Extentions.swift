//
//  String+Extentions.swift
//  Ymmuie
//
//  Created by Ahmed Eltrass on 21/11/2022.
//

import Foundation
extension String {
    var asUrl : URL? {
        return URL(string: self)
    }
}

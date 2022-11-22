//
//  DishPopular.swift
//  Ymmuie
//
//  Created by Ahmed Eltrass on 21/11/2022.
//

import Foundation
struct DishPopular{
    let id, name , description , image : String?
    let calories : Int?
    var formattedCalories : String{
        return "\(calories ?? 0) Calories"
    }
}

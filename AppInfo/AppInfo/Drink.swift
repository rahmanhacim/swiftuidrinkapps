//
//  Drink.swift
//  AppInfo
//
//  Created by Rahman Hakim on 04/04/20.
//  Copyright © 2020 Rahman Hakim. All rights reserved.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    var id : Int
    var name : String
    var imageName : String
    var description :String
    var category : Category
    
    enum Category : String, CaseIterable, Hashable, Codable  {
        case hot = "hot"
        case cold = "cold"
        case alcohol = "alcohol"
    }
}


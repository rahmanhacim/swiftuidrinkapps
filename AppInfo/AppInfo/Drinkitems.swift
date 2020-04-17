//
//  Drinkitems.swift
//  AppInfo
//
//  Created by Rahman Hakim on 03/04/20.
//  Copyright © 2020 Rahman Hakim. All rights reserved.
//

import SwiftUI

struct Drinkitems: View {
    
    var drink:Drink
    
    var body: some View {
        VStack(alignment: .leading){
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width:300, height: 200)
                .cornerRadius(10)
                .shadow(radius:10)
            
            Text(drink.name)
                .font(.headline)
            
            Text(drink.description)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
            .lineLimit(2)
                .frame(height: 40)
        }
    }
}

struct Drinkitems_Previews: PreviewProvider {
    static var previews: some View {
        Drinkitems(drink: drinkData[0])
    }
}

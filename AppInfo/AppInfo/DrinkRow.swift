//
//  DrinkRow.swift
//  AppInfo
//
//  Created by Rahman Hakim on 17/04/20.
//  Copyright © 2020 Rahman Hakim. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    
    var categoryName : String
    var drinks : [Drink]
    var body: some View {
        VStack(alignment: .leading){
            Text(self.categoryName)
                .font(.title)
            
           ScrollView(.horizontal, showsIndicators: false){
                       HStack(alignment: .top) {
                           ForEach(self.drinks,id: \.name){ drink in
                            NavigationLink(destination: DrinkDetail(drink: drink)){
                                      Drinkitems(drink: drink)
                                                 .frame(width:300)
                                        .padding(.trailing, 30)
                                
                            }
                           }
                       }
                   }
            
        }
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "Hot Drink", drinks: drinkData)
    }
}

//
//  Data.swift
//  AppInfo
//
//  Created by Rahman Hakim on 03/04/20.
//  Copyright © 2020 Rahman Hakim. All rights reserved.
//

import Foundation

let drinkData : [Drink] = load("drinks.json")

func  load<T:Decodable>(_ filename:String, as type:T.Type = T.self) -> T {
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else
        {
            fatalError("Could'nt find \(filename)")
        }
        do {
            data = try Data(contentsOf: file)
        } catch{
             fatalError("Could'nt find \(filename)")
        }
        do{
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        }
        catch{
             fatalError("Could'nt find \(filename)")
        }
}

//
//  Races.swift
//  Traction
//
//  Created by Aditya Agarwal on 20/05/22.
//

import Foundation

class Races: ObservableObject{
    let racesArr: [Race]
    
    var primary: Race {
        racesArr[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "allRaces", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        racesArr = try! JSONDecoder().decode([Race].self, from: data)
    }
}

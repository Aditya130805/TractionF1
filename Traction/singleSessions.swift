//
//  singleSessions.swift
//  Traction
//
//  Created by Aditya Agarwal on 25/05/22.
//

import Foundation

class singleSessions: ObservableObject {
    
    let singleSessionsArr: [singleSession]
    
    var primary: singleSession {
        singleSessionsArr[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "allDataOfSessions", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        singleSessionsArr = try! JSONDecoder().decode([singleSession].self, from: data)
    }
}

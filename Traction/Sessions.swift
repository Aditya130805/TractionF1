//
//  Sessions.swift
//  Traction
//
//  Created by Aditya Agarwal on 22/05/22.
//

import Foundation

class Sessions: ObservableObject{
    let sessionsArr: [Session]
    
    var primary: Session {
        sessionsArr[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "allSessions", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        sessionsArr = try! JSONDecoder().decode([Session].self, from: data)
    }
}

//
//  Race.swift
//  Traction
//
//  Created by Aditya Agarwal on 20/05/22.
//

import Foundation

struct Race: Decodable {
    let id: Int
    let date: String
    let numericDate: String
    let time: String
    let flagImg: String
    let raceName: String
    
    static let example = Race(id: 1, date: "Mar 20,", numericDate: "2022-03-20 20:30:00+0530", time: "20:30 IST", flagImg: "bahrain", raceName: "BAHRAIN GP")
}


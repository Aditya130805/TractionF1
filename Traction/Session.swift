//
//  Session.swift
//  Traction
//
//  Created by Aditya Agarwal on 22/05/22.
//

import Foundation

struct Session: Decodable {
    let id: Int
    let nameOfRace: String
    let layoutOfRace: String
    // check
    var session1Details = [String:String]()
    var session2Details = [String:String]()
    var session3Details = [String:String]()
    var session4Details = [String:String]()
    var session5Details = [String:String]()
    
    static let example = Session(id: 1, nameOfRace: "BAHRAIN GRAND PRIX", layoutOfRace: "bahrainLayout", session1Details: ["sessionDate":"Mar 18,", "sessionTime":"17:30 IST", "sessionIcon":"gear", "sessionName":"PRACTICE 1"], session2Details: ["sessionDate":"Mar 18,", "sessionTime":"20:30 IST", "sessionIcon":"gear", "sessionName":"PRACTICE 2"], session3Details: ["sessionDate":"Mar 19,", "sessionTime":"17:30 IST", "sessionIcon":"gear", "sessionName":"PRACTICE 3"], session4Details: ["sessionDate":"Mar 19,", "sessionTime":"20:30 IST", "sessionIcon":"stopwatch", "sessionName":"QUALIFYING"], session5Details: ["sessionDate":"Mar 20,", "sessionTime":"20:30 IST", "sessionIcon":"flag.fill", "sessionName":"RACE"])
}

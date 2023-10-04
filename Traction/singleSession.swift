//
//  singleSession.swift
//  Traction
//
//  Created by Aditya Agarwal on 25/05/22.
//

import Foundation

struct singleSession: Decodable {
    let id: Int
    let session1Details: singleSessionDetails
    let session2Details: singleSessionDetails
    let session3Details: singleSessionDetails
    let session4Details: singleSessionDetails
    let session5Details: singleSessionDetails
}

struct singleSessionDetails: Decodable {
    let raceSessionName: String
    let airTemperature: String
    let windSpeed: String
    let didItRain: Bool
    var position1Details = [String:String]()
    var position2Details = [String:String]()
    var position3Details = [String:String]()
    var position4Details = [String:String]()
    var position5Details = [String:String]()
    var position6Details = [String:String]()
    var position7Details = [String:String]()
    var position8Details = [String:String]()
    var position9Details = [String:String]()
    var position10Details = [String:String]()
    var position11Details = [String:String]()
    var position12Details = [String:String]()
    var position13Details = [String:String]()
    var position14Details = [String:String]()
    var position15Details = [String:String]()
    var position16Details = [String:String]()
    var position17Details = [String:String]()
    var position18Details = [String:String]()
    var position19Details = [String:String]()
    var position20Details = [String:String]()
    
}

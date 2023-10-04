//
//  Location.swift
//  Traction
//
//  Created by Aditya Agarwal on 25/08/22.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int;
    let circuitImg: String;
    let flagImg: String;
    let countryName: String;
    let firstGrandPrix: Int;
    let circuitLength: Double;
    let numberOfLaps: Double;
    let raceDistance: Double;
    let lapRecord: String;
    let whyCountry: String;
    let latitude: Double;
    let longitude: Double;
        
    static let example = Location(id: 1, circuitImg: "bahrain", flagImg: "bahrain", countryName: "Bahrain", firstGrandPrix: 2004, circuitLength: 5.412, numberOfLaps: 57, raceDistance: 308.238, lapRecord: "1:31.447 - De La Rosa (2005)", whyCountry: "Beautiful place", latitude: 50.5577, longitude: 26.0667)
}

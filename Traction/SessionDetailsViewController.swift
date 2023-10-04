//
//  SessionDetailsViewController.swift
//  Traction
//
//  Created by Aditya Agarwal on 24/05/22.
//

import UIKit

class SessionDetailsViewController: UIViewController {
    
    
    @IBOutlet var singleSessionBanners: [UIStackView]!
    
    
    @IBOutlet var extraDetailsBanners: [UIStackView]!
    
    @IBOutlet weak var raceSessionName: UILabel!
    
    @IBOutlet weak var airTemperature: UILabel!
    
    @IBOutlet weak var windSpeed: UILabel!
    
    @IBOutlet weak var didItRain: UIImageView!
    
    @IBOutlet var teamColors: [UIImageView]!
    
    @IBOutlet var driverNames: [UILabel]!
    
    @IBOutlet var driverNumbers: [UILabel]!
    
    @IBOutlet var allTimeDifferences: [UILabel]!
    
    static var whichSecondSegue:Int?
    static var numRacesCompleted = 22
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let whichRace = RaceDetailsViewController.whichSegue!
        let whichSession = SessionDetailsViewController.whichSecondSegue!
        
        // Styling all the stacks to make them curved instead of plain rectangles
        for banner in singleSessionBanners {
            banner.backgroundColor = UIColor.systemFill
            banner.layer.cornerRadius = 12
            banner.isLayoutMarginsRelativeArrangement = true
            banner.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 15)
        }
        for banner in extraDetailsBanners {
            banner.backgroundColor = UIColor.systemFill
            banner.layer.cornerRadius = 12
            banner.isLayoutMarginsRelativeArrangement = true
        }
        extraDetailsBanners[2].directionalLayoutMargins = NSDirectionalEdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 16)
        
        
        let raceIdentifier = singleSessions().singleSessionsArr[whichRace - 1]
        // making an array for different session details at their respective indexes
        let differentSessions = [raceIdentifier.session1Details, raceIdentifier.session2Details, raceIdentifier.session3Details, raceIdentifier.session4Details, raceIdentifier.session5Details]
        
        let sessionidentifier = differentSessions[whichSession-1]
        
        raceSessionName.text = sessionidentifier.raceSessionName
        airTemperature.text = sessionidentifier.airTemperature
        windSpeed.text = sessionidentifier.windSpeed
        
        // Setting the image of a check or a cross on whether it rained or not
        var rainIcon = ""
        var rainIconColor: UIColor
        if sessionidentifier.didItRain == true {
            rainIcon = "checkmark.circle.fill"
            rainIconColor = UIColor.systemGreen
        }
        else {
            rainIcon = "xmark.circle.fill"
            rainIconColor = UIColor.systemRed
        }
        didItRain.image = UIImage(systemName: rainIcon)
        didItRain.image = didItRain.image?.withRenderingMode(.alwaysTemplate)
        didItRain.tintColor = rainIconColor
        
        // Setting all the data in the positions
        
        let differentPositions = [sessionidentifier.position1Details, sessionidentifier.position2Details, sessionidentifier.position3Details, sessionidentifier.position4Details, sessionidentifier.position5Details, sessionidentifier.position6Details, sessionidentifier.position7Details, sessionidentifier.position8Details, sessionidentifier.position9Details, sessionidentifier.position10Details, sessionidentifier.position11Details, sessionidentifier.position12Details, sessionidentifier.position13Details, sessionidentifier.position14Details, sessionidentifier.position15Details, sessionidentifier.position16Details, sessionidentifier.position17Details, sessionidentifier.position18Details, sessionidentifier.position19Details, sessionidentifier.position20Details]
        
        let numPositions = 20
        for i in 0...numPositions-1 {
            
            driverNumbers[i].text = differentPositions[i]["driverNumber"]
            // Honoring the previous world champion with driver number 1 by changing it to the color gold
            if differentPositions[i]["driverNumber"] == "1" {
                driverNumbers[i].textColor = UIColor.init(red: 0.965, green: 0.82, blue: 0.02, alpha: 1.0)
            }
            driverNames[i].text = differentPositions[i]["driverName"]
            allTimeDifferences[i].text = differentPositions[i]["timeDifference"]
            teamColors[i].image = UIImage(named: differentPositions[i]["teamColor"]!)
        }
        
        
    }
    
    
    
}

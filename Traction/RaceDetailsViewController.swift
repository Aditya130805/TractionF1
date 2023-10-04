//
//  RaceDetailsViewController.swift
//  Traction
//
//  Created by Aditya Agarwal on 22/05/22.
//

import UIKit

class RaceDetailsViewController: UIViewController {

    @IBOutlet var sessionBanners: [UIStackView]!
    
    @IBOutlet weak var displayRaceName: UILabel!
    
    @IBOutlet weak var displayRaceLayout: UIImageView!
    
    @IBOutlet var displaySessionDates: [UILabel]!
    
    @IBOutlet var displaySessionTimes: [UILabel]!
    
    @IBOutlet var displaySessionIcons: [UIImageView]!
    
    @IBOutlet var displaySessionNames: [UILabel]!
    
    
    static var whichSegue:Int?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var segueId:Int = 0
        for i in 1...5 {
            if (segue.identifier == nil){
                segueId = 0
            }
            else if (segue.identifier! == "secondSegue\(i)") {
                segueId = i
            }
        }
        //print(segueId)
        SessionDetailsViewController.whichSecondSegue = segueId
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        // print(identifier)
        if identifier == "" {
            return true
        }
        else if RaceDetailsViewController.whichSegue! > SessionDetailsViewController.numRacesCompleted {
            let alert = UIAlertController(title: "Invalid action!", message: "The desired data is unavailable, most likely due to the Grand Prix weekend still yet to come", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(action) in alert.dismiss(animated: true, completion: nil)}))
            present(alert, animated: true, completion: nil)
            
            return false
        }
        else{
            return true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let whichRace = RaceDetailsViewController.whichSegue!
        
        // Styling the session banners
        for banner in sessionBanners {
            banner.backgroundColor = UIColor.systemFill
            banner.layer.cornerRadius = 12
            banner.isLayoutMarginsRelativeArrangement = true
            banner.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 0)
        }
        
        
        let allSessionsArr = Sessions().sessionsArr
        let selectSession = allSessionsArr[whichRace - 1]
        
        // Setting race names and layout images
        displayRaceName.text = selectSession.nameOfRace
        displayRaceLayout.image = UIImage(named: selectSession.layoutOfRace)
        
        let numSessions = 5
        
        // making an array for different session details at their respective indexes
        let differentSessions = [selectSession.session1Details, selectSession.session2Details, selectSession.session3Details, selectSession.session4Details, selectSession.session5Details]
        
        // Setting values for session dates, times, icons, and names
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 15, weight: .bold, scale: .large)
        for i in 0...numSessions-1 {
            displaySessionDates[i].text = differentSessions[i]["sessionDate"]
            displaySessionTimes[i].text = differentSessions[i]["sessionTime"]
            displaySessionIcons[i].image = UIImage(systemName: differentSessions[i]["sessionIcon"]!, withConfiguration: largeConfig)
            displaySessionNames[i].text = differentSessions[i]["sessionName"]
        }
        
    }
    
    @IBAction func unwindToSecondViewController(_ sender: UIStoryboardSegue) {
         // No code needed, no need to connect the IBAction explicitely
        }
    
}

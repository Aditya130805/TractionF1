//
//  ViewController.swift
//  Traction
//
//  Created by Aditya Agarwal on 20/05/22.
//

import UIKit


class ViewController: UIViewController {


    @IBOutlet weak var mainLogo: UILabel!
    
    @IBOutlet weak var AllRacesStack: UIStackView!
    
    @IBOutlet var raceBanners: [UIStackView]!
    
    @IBOutlet var allDates: [UILabel]!
    
    @IBOutlet var allTimes: [UILabel]!
    
    @IBOutlet var allRaceNames: [UILabel]!
    
    @IBOutlet var allFlags: [UIImageView]!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var segueId:Int = 0
        for i in 1...22 {
            if (segue.identifier! == "segue\(i)") {
                segueId = i
            }
        }
        // print(segueId)
        RaceDetailsViewController.whichSegue = segueId
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        mainLogo.layer.borderColor = UIColor(red: 2.0, green: 2.0, blue: 2.0, alpha: 0.9).cgColor
//        mainLogo.layer.borderWidth = 4;
//        mainLogo.layer.cornerRadius = 20;
        
        // Giving common styling to all race banners
        for banner in raceBanners {
            banner.backgroundColor = UIColor.systemFill
            banner.layer.cornerRadius = 12
            banner.isLayoutMarginsRelativeArrangement = true
            banner.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 0)
        }
        
        // Filling dates in all race banners
        let numRaces = 22
        let allRacesArr = Races().racesArr
        for i in 0...numRaces-1 {
            let selectRace = allRacesArr[i]
            allDates[i].text = selectRace.date
            allTimes[i].text = selectRace.time
            allRaceNames[i].text = selectRace.raceName
            allFlags[i].image = UIImage(named: selectRace.flagImg)
        }
        
        // Getting the current date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ssZ"
        dateFormatter.timeZone = TimeZone(identifier: "IST")
        let currentDate = dateFormatter.string(from: Date())
//        let currentDate = "2022-05-22 20:15:00+0530"
        
        // Finding the time to each race from the current date in seconds
        var timesToRace = [Double]()
        for j in 0...numRaces-1 {
            let selectedRace = allRacesArr[j]
            let fullDate = selectedRace.numericDate
            let current = dateFormatter.date(from: currentDate)
            let raceDate = dateFormatter.date(from: fullDate)
            let difference = current!.timeIntervalSinceReferenceDate - raceDate!.timeIntervalSinceReferenceDate
            timesToRace += [difference]
        }
        
        // Finding the nearest race
        var nearestRaceArrIndex:Int = 21
        for k in 0...numRaces-1 {
            // Closest race - first negative difference value
            // Roughly 1h 45m from start time to complete a race
            if timesToRace[k] < 6300 {
                nearestRaceArrIndex = k
                break
            }
        }
        print(nearestRaceArrIndex);
    
        // Changing banner colors for the coming race and the unavailable races after
        raceBanners[nearestRaceArrIndex].backgroundColor = UIColor.init(red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0)
        // No unavailable races if only the last race remains
        if (nearestRaceArrIndex < 21){
            for m in nearestRaceArrIndex+1...numRaces-1 {
                raceBanners[m].backgroundColor = UIColor.init(white: 0.4, alpha: 0.25)
            }
        }
        
    }
    
    @IBAction func unwindToFirstViewController(_ sender: UIStoryboardSegue) {
         // No code needed, no need to connect the IBAction explicitely
        }
    
}


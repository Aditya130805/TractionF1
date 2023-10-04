//
//  DiscoverEachView.swift
//  Traction
//
//  Created by Aditya Agarwal on 26/08/22.
//

import SwiftUI

let backgroundImage2 = Image("background2").resizable()

struct DiscoverEachView: View {
    let location: Location
    
    var body: some View {
        
        ScrollView {
                
            Image(location.flagImg)
                .resizable()
                .frame(width: 280.0, height: 140.0)
                .padding(.vertical, 15)
            
            Text("Why go?")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .padding(.vertical, 25)
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(location.whyCountry)
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
                .font(.system(size: 17.5))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineSpacing(7)
            
            Text("Circuit")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .padding(.vertical, 25)
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(location.circuitImg)
                .padding(.vertical, 20)
            
            Text("First Grand Prix: " + String(location.firstGrandPrix))
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title3)
            Text("Circuit length: " + String(location.circuitLength) + "km")
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title3)
            Text("Number of laps: " + String(location.numberOfLaps))
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title3)
            Text("Race distance: " + String(location.raceDistance) + "km")
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title3)
            Text("Lap record: " + String(location.lapRecord))
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title3)
        }
        .padding(.vertical, 20)
        .navigationTitle(location.countryName)
//        .background(Color(red: 0.157, green: 0.157, blue: 0.157, opacity: 0.95))
        .background(Image("background2").resizable().ignoresSafeArea())
    }
    
        
    
}

struct DiscoverEachView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DiscoverEachView(location: Location.example)
        }
        
    }
}

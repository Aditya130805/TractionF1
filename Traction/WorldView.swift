//
//  WorldView.swift
//  Traction
//
//  Created by Aditya Agarwal on 25/08/22.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion( // Starting region of our map
        center: CLLocationCoordinate2D(latitude: 47.007222, longitude: 5.8275),
        span: MKCoordinateSpan(latitudeDelta: 18, longitudeDelta: 18)
    )
    
    var body: some View {
        NavigationView{
            VStack{
            Map(coordinateRegion: $region,
                annotationItems: locations.places) {
                location in
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                    NavigationLink(destination: DiscoverEachView(location: location)){
                        Image(location.flagImg)
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 60, height: 30)
                            .shadow(radius: 3)
                    }
                    }
                }
            }
            .background(Color(red: 0.067, green: 0.106, blue: 0.145))
            .navigationBarTitle("Locations")
            .navigationBarHidden(true)
        }
    }
}


struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            WorldView()
        }
    }
}

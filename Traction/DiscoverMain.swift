//
//  DiscoverMain.swift
//  Traction
//
//  Created by Aditya Agarwal on 25/08/22.
//

import SwiftUI

class DiscoverMainPage:UIHostingController<DiscoverMain>{
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: DiscoverMain())
    }
}



struct DiscoverMain: View {
    
    @StateObject var locations = Locations()
    
    var body: some View {
        WorldView()
        .environmentObject(locations)
    }
}





struct DiscoverMain_Previews: PreviewProvider {
    static var previews: some View {
        TabView{
            NavigationView {
                DiscoverMain()
            }
        }
    }
}


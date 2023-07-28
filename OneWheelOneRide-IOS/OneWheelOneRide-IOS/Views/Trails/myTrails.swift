//
//  myTrails.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/27/23.
//

import SwiftUI

struct myTrails: View {
    
    @State var trailData = [Trail]()
    @State private var showFavoritesOnly = false

    var body: some View {
        NavigationView {
            List {
                ForEach(trailData) { myTrail in
                    NavigationLink {
                        myTrialsDetails(trail: myTrail)
                    } label: {
                        myTrailsRow(trail: myTrail)
                    }
                }
            }.onAppear() {
                TrailData().loadData { (trails) in
                    self.trailData = trails
                }
            }.navigationTitle("Trails")
        }
    }
}

struct myTrails_Previews: PreviewProvider {
    static var previews: some View {
        myTrails()
    }
}


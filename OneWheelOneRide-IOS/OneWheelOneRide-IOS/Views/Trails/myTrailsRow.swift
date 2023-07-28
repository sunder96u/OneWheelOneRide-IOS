//
//  myTrailsRow.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/28/23.
//

import SwiftUI

struct myTrailsRow: View {
    @EnvironmentObject var trailData: TrailData
    var trail: Trail
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string:"\(trail.picture)"))
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            Text(trail.name)
                .font(.title)            
        }
    }
}

//struct myTrailsRow_Previews: PreviewProvider {
//
//    static var previews: some View {
//        myTrailsRow()
//    }
//}

//
//  myTrialsDetails.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/27/23.
//

import SwiftUI
import MapKit

struct myTrialsDetails: View {
    @EnvironmentObject var trailData: TrailData
    @EnvironmentObject var reviewData: TrailReviewData
    var trail: Trail
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 29.4220, longitude: -98.4850),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )

                
    var body: some View {
        ScrollView {
            Map(coordinateRegion: $region)
                .frame(height: 300)
            
            CircleImage(imageURL: URL(string:"\(trail.picture)")!)
                .offset(y: -110)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(trail.name)
                        .font(.title)
                }
                
                HStack {
                    Text("Address: ")
                    Text(trail.address)
                }
                HStack {
                    Text("Trail Difficulty:")
                    Text("\(trail.difficulty) out of 5")
                }
                Divider()
                
                Text("Reviews:")
                    .font(.title2)
                
                myTrailReviews()
                
            }
            .offset(y: -130)
            .padding()
        }
    }
}

//struct myTrialsDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        myTrialsDetails()
//    }
//}

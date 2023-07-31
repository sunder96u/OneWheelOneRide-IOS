//
//  myGroupDetails.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/28/23.
//

import SwiftUI

struct myGroupDetails: View {
    @EnvironmentObject var groupData: GroupData
    var group: Group
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string:"https://oneradwheel.com/wp-content/uploads/2018/12/Group-Ride-Thumb-e1544861445722.jpg")!)
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 300)
                
                
            
            CircleImage(imageURL: URL(string:"\(group.picture)")!)
                .offset(y: -110)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(group.name)
                        .font(.title)
                }
                
                HStack {
                    Text("Description: ")
                }
                HStack {
                    Text(group.description)
                }
                Divider()
                
                Text("Meet Ups:")
                    .font(.title2)
                myGroupRides()
            }
            .offset(y: -130)
            .padding()
        }
    }
}

//struct myGroupDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        myGroupDetails(group)
//    }
//}

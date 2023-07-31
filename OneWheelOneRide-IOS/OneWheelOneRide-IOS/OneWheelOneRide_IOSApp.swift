//
//  OneWheelOneRide_IOSApp.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/27/23.
//

import SwiftUI

@main
struct OneWheelOneRide_IOSApp: App {
    @StateObject private var trail = TrailData()
    @StateObject private var trailReview = TrailReviewData()
    @StateObject private var group = GroupData()
    @StateObject private var groupReview = GroupReviewData()
    
    var body: some Scene {
        WindowGroup {
            myTrails()
                .environmentObject(trail)
                .environmentObject(trailReview)
            myGroups()
                .environmentObject(group)
                .environmentObject(groupReview)
           
        }
    }
}

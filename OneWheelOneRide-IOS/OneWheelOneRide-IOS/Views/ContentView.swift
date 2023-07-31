//
//  ContentView.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .home
    
    enum Tab {
        case home
        case trails
        case groups
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(Tab.home)
            
            myTrails()
                .tabItem {
                    Label("Trails", systemImage: "signpost.right")
                }
                .tag(Tab.trails)
            
            myGroups()
                .tabItem {
                    Label("Groups", systemImage: "person.3")
                }
                .tag(Tab.groups)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

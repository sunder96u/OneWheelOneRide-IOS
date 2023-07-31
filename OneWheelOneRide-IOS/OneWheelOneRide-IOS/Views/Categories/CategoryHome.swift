//
//  CategoryHome.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/31/23.
//

import SwiftUI


struct CategoryHome: View {
    @State private var showingProfile = false
    
    
    var body: some View {
        VStack {
            Text("Onewheel")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundStyle(.purple)
            Image("icon")
                .resizable()
                .scaledToFit()
            Text("Oneride")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundStyle(.purple)
            
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}

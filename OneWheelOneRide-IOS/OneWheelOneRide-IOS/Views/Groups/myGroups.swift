//
//  myGroups.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/27/23.
//

import SwiftUI

struct myGroups: View {
    
    @State var groupData = [Group]()
    @State private var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(groupData) { myGroup in
                    NavigationLink {
                        myGroupDetails(group: myGroup)
                    } label: {
                        MyGroupRow(group: myGroup)
                    }
                }
            }.onAppear() {
                GroupData().loadData { (groups) in
                    self.groupData = groups
                }
            }.navigationTitle("Groups")
        }
    }
}

struct myGroups_Previews: PreviewProvider {
    static var previews: some View {
        myGroups()
    }
}

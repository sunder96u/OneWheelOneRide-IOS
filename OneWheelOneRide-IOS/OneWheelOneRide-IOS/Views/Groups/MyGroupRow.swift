//
//  MyGroupRow.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/28/23.
//

import SwiftUI

struct MyGroupRow: View {
    @EnvironmentObject var groupData: GroupData
    var group: Group
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string:"\(group.picture)"))
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            Text(group.name)
                .font(.title)
        }

    }
}

//struct MyGroupRow_Previews: PreviewProvider {
//    static var previews: some View {
//        MyGroupRow()
//    }
//}

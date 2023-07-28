//
//  GroupData.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/28/23.
//

import Foundation

struct Group: Codable, Identifiable{
    var id: Int
    var name: String
    var description: String
    var members: Array<Int>
    var picture: String
}

class GroupData : ObservableObject{
    @Published var groups = [Group]()
    
    func loadData(completion:@escaping ([Group]) -> ()) {
        guard let url = URL(string: "https://onewheeloneride-back.up.railway.app/groups") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let groups = try! JSONDecoder().decode([Group].self, from: data!)
            print(groups)
            DispatchQueue.main.async {
                completion(groups)
            }
        }.resume()
    }
}

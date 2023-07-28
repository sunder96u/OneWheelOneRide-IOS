//
//  TrailData.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/28/23.
//

import Foundation

struct Trail: Codable, Identifiable{
    var id: Int
    var name: String
    var address: String
    var difficulty: Int
    var picture: String
}

class TrailData : ObservableObject{
    @Published var trails = [Trail]()
    
    func loadData(completion:@escaping ([Trail]) -> ()) {
        guard let url = URL(string: "https://onewheeloneride-back.up.railway.app/trails") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let trails = try! JSONDecoder().decode([Trail].self, from: data!)
            print(trails)
            DispatchQueue.main.async {
                completion(trails)
            }
        }.resume()
    }
}

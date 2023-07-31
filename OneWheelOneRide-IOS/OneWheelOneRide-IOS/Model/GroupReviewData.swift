//
//  GroupReviewData.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/28/23.
//

import Foundation

struct GroupReview: Codable, Identifiable {
    var id: Int
    var comment: String
    var user_id: Int
    var group_id: Int
}

class GroupReviewData: ObservableObject{
    @Published var groupReview = [GroupReview]()
    
    func loadData(completion:@escaping ([GroupReview]) -> ()) {
        guard let url = URL(string: "https://onewheeloneride-back.up.railway.app/comments") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let groupReview = try! JSONDecoder().decode([GroupReview].self, from: data!)
            print(groupReview)
            DispatchQueue.main.async {
                completion(groupReview)
            }
        }.resume()
    }
}

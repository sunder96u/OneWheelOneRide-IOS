//
//  TrailReviewData.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/28/23.
//

import Foundation

struct TrailReview: Codable, Identifiable {
    var id: Int
    var review: String
    var rating: Int
    var user_id: Int
    var trail_id: Int
}

class TrailReviewData: ObservableObject{
    @Published var trailReview = [TrailReview]()
    
    func loadData(completion:@escaping ([TrailReview]) -> ()) {
        guard let url = URL(string: "https://onewheeloneride-back.up.railway.app/trailreviews") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let trailReview = try! JSONDecoder().decode([TrailReview].self, from: data!)
            print(trailReview)
            DispatchQueue.main.async {
                completion(trailReview)
            }
        }.resume()
    }
}

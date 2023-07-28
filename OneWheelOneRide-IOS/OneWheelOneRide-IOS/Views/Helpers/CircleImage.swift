//
//  CircleImage.swift
//  OneWheelOneRide-IOS
//
//  Created by Steven Undewood on 7/28/23.
//  Abstract:
//  A view that clips an image to a circle and adds a stroke and shadow
//

import SwiftUI

struct CircleImage: View {
    var imageURL: URL
    
    var body: some View {
        AsyncImage(url: imageURL) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height:200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 7)
            case .failure(_):
                Image(systemName: "exclamationmark.icloud.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .foregroundColor(.red)
            }
            
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageURL: URL(string: "https://example.com/icon")!)
    }
}

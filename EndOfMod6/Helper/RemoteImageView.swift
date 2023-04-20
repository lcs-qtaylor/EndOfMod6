//
//  RemoteImageView.swift
//  EndOfMod6
//
//  Created by Quin Taylor on 2023-04-20.
//
import SwiftUI

struct RemoteImageView: View {
    
    // MARK: Stored properties
    
    // What image to show
    let urlOfImageToShow: String
    
    // MARK: Computed properties
    var body: some View {
        
        // Try to create a URL from the string provided
        if let url = URL(string: urlOfImageToShow) {
            
            // Retrieves and displays a remote image, showing a placeholder until the image has loaded
            AsyncImage(url: url,
                       content: { downloadedImage in
                downloadedImage
            },
                       placeholder: {
                ProgressView()
            })
            
        } else {
            // If the string could not be made into a URL, show a question mark
            Image(systemName: "questionmark.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 25)
                .foregroundColor(.blue)
        }

    }
    
}

struct RemoteImageView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        RemoteImageView(urlOfImageToShow: "https://cataas.com/cat/cute")
        
        RemoteImageView(urlOfImageToShow: "")
    }
}

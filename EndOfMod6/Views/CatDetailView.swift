//
//  CatDetailView.swift
//  EndOfMod6
//
//  Created by Quin Taylor on 2023-04-20.
//

import SwiftUI

// MARK: Stored properties



// MARK: Computed properties
struct CatDetailView: View {
    
    // Song to show in this view
    var catToShow: Cat
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack {
                
                //RemoteImageView(urlOfImageToShow: songToShow.artworkUrl100)
                
                VStack(alignment: .leading) {
                    
                    Text(catToShow.tags)
                        .font(.subheadline)
                    
                    
                    
                }
                
            }
        }
    }
}

struct CatDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CatDetailView(catToShow: exampleCat)
    }
}

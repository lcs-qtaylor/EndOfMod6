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
        NavigationView {
            VStack(alignment: .leading) {
                
             
                    RemoteImageView(urlOfImageToShow: catToShow.previewUrl)
                    
                    .padding
                        Button {
                            
                        } label: {
                            
                            Text("Favourite")
                            
                        }
                
                    }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink(destination: HistoryView()) {
                        Image(systemName: "star.fill").font(.title)
                            .foregroundColor(.yellow)
                    }
                }
        }
    }
    
    struct CatDetailView_Previews: PreviewProvider {
        static var previews: some View {
            CatDetailView(catToShow: exampleCat)
        }
    }
}

//
//  CatDetailView.swift
//  EndOfMod6
//
//  Created by Quin Taylor on 2023-04-20.
//

import SwiftUI
struct CatDetailView: View {
    //MARK: Stored properties
    var catToShow: Cat
    @State var priorResults: [Cat] = []
    //MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                RemoteImageView(urlOfImageToShow: catToShow.previewUrl)
                
                    .padding
                
                Button(action: {
                    let latestResult = Cat (catId: "rV1MVEh0Af2Bm4O0",
                                            tags:"kitten",
                                            previewUrl:"https://cataas.com/cat/kitten")
                    
                    Favourites.append(latestResult)
                }, label: {
                    Image(systemName: "star.fill")
                    
                })
                .buttonStyle(.bordered)
                .padding ()
                
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink(destination: $priorResults.Favourites) {
                        Image(systemName: "star.fill").font(.title)
                            .foregroundColor(.yellow)
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
}

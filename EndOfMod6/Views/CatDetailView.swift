//
//  CatDetailView.swift
//  EndOfMod6
//
//  Created by Quin Taylor on 2023-04-20.
//

import SwiftUI
struct CatDetailView: View {
    //MARK: Stored properties
    @Binding var history: [Cat]
    @State var catId: String = ""
    @State var previewUrl: String = ""
    //MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                RemoteImageView(urlOfImageToShow: previewUrl)
                
                    .padding
                
                Button(action: {
                    previewUrl = ""
                    catId = ""
                }, label: {
                    Text("Next")
                })
                
                Button(action: {
                    guard let previewUrl = "" else {
                        return
                    }
                    
                    let Id = String(catId)
                    
                    history.append(Favourites(priorResult: Cat))
                    
                }, label: {
                    Text("Save")
                    
                })
                
            }
        }
    }
}
    struct CatDetailView_Previews: PreviewProvider {
        static var previews: some View {
            CatDetailView(history: Binding.constant(historyForPreview))
    }
}

//
//  Favourites.swift
//  EndOfMod6
//
//  Created by Quin Taylor on 2023-04-22.
//

import SwiftUI

struct Favourites: View {
    //MARK: Stored Properties
    let somePriorResult: Cat
    //MARK: Computed Properties
    
    var body: some View {
        VStack {
            
            AsyncImage(url: somePriorResult.previewUrl)
        }
    }
}

struct Favourites_Previews: PreviewProvider {
    static var previews: some View {
        Favourites(somePriorResult: exampleCat)
    }
}

//
//  ListView.swift
//  EndOfMod6
//
//  Created by Quin Taylor on 2023-04-22.
//

import SwiftUI

struct ListView: View {
    @Binding var history: [Cat]
    var body: some View {
        VStack{
            
            
            List (history.reversed()) { priorResult in
                    Favourites(priorResult: priorResult)
            }
        }
    }
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(history: Binding.constant(historyForPreview))
    }
}

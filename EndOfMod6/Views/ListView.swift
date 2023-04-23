//
//  ListView.swift
//  EndOfMod6
//
//  Created by Quin Taylor on 2023-04-22.
//

import SwiftUI

struct ListView: View {
    @State var priorResults: [Cat] = []
    var body: some View {
        List (priorResults.reversed()) { currentCat in
            HStack {
                Spacer ( )
                Favourites(somePriorResult: currentCat)
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView ([Cat]priorResults: [Cat])
    }
}

//
//  EndOfMod6App.swift
//  EndOfMod6
//
//  Created by Quin Taylor on 2023-04-20.
//

import SwiftUI

@main
struct EndOfMod6App: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                
                CatDetailView(catToShow: exampleCat)
                    .tabItem {
                        Image(systemName: "rectangle" )
                        Text("Rectangle")
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(1)
                
                ListView()
                    .tabItem {
                        Image(systemName: "star.fill" )
                        Text("Favourite")
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(2)
                
            }
        }
    }
}

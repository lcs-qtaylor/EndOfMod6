////
////  SearchView.swift
////  EndOfMod6
////
////  Created by Quin Taylor on 2023-04-20.
////
//
//import SwiftUI
//
//struct SearchView: View {
//    // MARK: Stored properties
//    @State var foundCats: [Cat] = []
//
//    @State var searchText = ""
//    // MARK: Computed properties
//    var body: some View {
//        
//        NavigationView {
//
//            List (foundCats, id: \.id) { currentCat in
//
//                NavigationLink(destination: {
//                    CatDetailView(catToShow: currentCat)
//                }, label: {
//
//                    VStack(alignment: .leading) {
//
//                        Text(currentCat.tags)
//                            .bold ()
//                        Spacer ()
//
//
//                    }
//
//
//                               })
//            }
//            .navigationTitle("Kitty Browser")
//            .searchable(text: $searchText)
//            .onChange(of: searchText) {newSearchText in
//
//                Task {
//
//                    foundCats = await NetworkService.fetch(resultsFor: searchText)
//                }
//            }
//        }
//    }
//}
//
//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchView()
//    }
//}

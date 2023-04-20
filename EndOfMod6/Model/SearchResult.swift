//
//  SearchResult.swift
//  EndOfMod6
//
//  Created by Quin Taylor on 2023-04-20.
//

import Foundation

struct SearchResult:Codable {
    
    let resultCount: Int
    let results:[Cat]
}

//
//  Cat.swift
//  EndOfMod6
//
//  Created by Quin Taylor on 2023-04-20.
//

import Foundation

struct Cat:Codable {
    let catId: String
    let tags:String
    let previewUrl: String
    }

let exampleCat = Cat(catId: "rV1MVEh0Af2Bm4O0",
                     tags:"kitten",
                     previewUrl:"https://cataas.com/cat/kitten")

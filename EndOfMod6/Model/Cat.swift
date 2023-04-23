//
//  Cat.swift
//  EndOfMod6
//
//  Created by Quin Taylor on 2023-04-20.
//

import Foundation

struct Cat:Identifiable {
    let id = UUID()
    let catId: String
    let tags:String
    let previewUrl: String
    }

var exampleCatOne = Cat(catId: "rV1MVEh0Af2Bm4O0",
                     tags:"kitten",
                     previewUrl:"https://cataas.com/cat/kitten")

var exampleCatTwo = Cat(catId: "", tags: "", previewUrl: "")


var historyforPreview = [exampleCatOne, exampleCatTwo]

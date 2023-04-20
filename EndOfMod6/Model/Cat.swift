//
//  Cat.swift
//  EndOfMod6
//
//  Created by Quin Taylor on 2023-04-20.
//

import Foundation

struct Cat: Codable {
    let id: String
    let tags:[String]
    let owner: String
    }

let exampleCat = Cat(id: "rV1MVEh0Af2Bm4O0",
                     tags:["kitten","several","gif"],
                     owner: "null")
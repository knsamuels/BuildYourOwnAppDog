//
//  Species.swift
//  BuildYourOwnAppDog
//
//  Created by Kristin Samuels  on 6/17/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

import Foundation

struct TopLevelDictionary: Decodable {
    let results: [Species]
}

struct Species: Decodable {
    let name: String
    let language: String
}

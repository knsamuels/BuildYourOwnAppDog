//
//  SpeciesError.swift
//  BuildYourOwnAppDog
//
//  Created by Kristin Samuels  on 6/17/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

import Foundation

enum SpeciesError: LocalizedError {
    case invaildURL
    case thownError(Error)
    case noData 
}

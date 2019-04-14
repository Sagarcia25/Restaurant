//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Salvador Garcia on 4/13/19.
//  Copyright © 2019 Salvador Garcia. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreperationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}

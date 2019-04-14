//
//  Order.swift
//  Restaurant
//
//  Created by Salvador Garcia on 4/13/19.
//  Copyright © 2019 Salvador Garcia. All rights reserved.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}

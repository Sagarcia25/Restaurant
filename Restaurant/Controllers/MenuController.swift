//
//  MenuController.swift
//  Restaurant
//
//  Created by Salvador Garcia on 4/14/19.
//  Copyright © 2019 Salvador Garcia. All rights reserved.
//

import Foundation

class MenuController {
    let baseURL = URL(string: "http://localhost:8090/")!


func fetchCategories(completion: @escaping ([String]?) -> Void){
    
    let categoryURL = baseURL.appendingPathComponent("categories")
    let task = URLSession.shared.dataTask(with: categoryURL){
        (data, response, error) in
        
    }
    task.resume()
}

func fetchMenuItems(forCategory categoryName: String, completion: @escaping ([MenuItem]?) -> Void){
    
    let initialMenuURL = baseURL.appendingPathComponent("menu")
    var components = URLComponents(url: initialMenuURL, resolvingAgainstBaseURL: true)!
    components.queryItems = [URLQueryItem(name: "category", value: categoryName)]
    let menuURL = components.url!
    let task = URLSession.shared.dataTask(with: menuURL){
        (data, response, error) in
        
    }
    task.resume()
}

func submitOrder(forMenuIds: [Int], completion: @escaping (Int?) -> Void){
    let orderURL = baseURL.appendingPathComponent("order")
}
}

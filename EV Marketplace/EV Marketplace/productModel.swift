//
//  productModel.swift
//  EV Marketplace
//
//  Created by azzam on 26/11/22.
//

import Foundation

struct ProductModel : Identifiable {
    let id: Int
    let name: String
    let image: String
    let price : String
    let location : String
    
    init(id: Int, name: String, image: String, price: String, location: String) {
        
        self.id = id
        self.name = name
        self.image = image
        self.price = price
        self.location = location
        
    }
}

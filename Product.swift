//
//  Product.swift
//  Northwinder
//
//  Created by Austin Tooley on 6/28/16.
//  Copyright © 2016 Classroom. All rights reserved.
//

import Foundation

class Prodcut {
    let id: Int
    var name: String
    var unitPrice: Double
    var unitsInStock: Int
    
    init(id: Int, name: String = "", unitPrice: Double = 0.0, unitsInStock: Int = 0) {
        self.id = id
        self.name = name
        self.unitPrice = unitPrice
        self.unitsInStock = unitsInStock
    }
}
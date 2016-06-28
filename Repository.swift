//
//  Repository.swift
//  Northwinder
//
//  Created by Austin Tooley on 6/28/16.
//  Copyright © 2016 Classroom. All rights reserved.
//

import Foundation

class Repository {
    func fetchAllCategories() throws -> [Category] {
        var categories = [Category]()
        categories.append(Category(id: 212, name: "Beverages", desc: "Soft drinks, juices, and beers"))
        categories.append(Category(id: 231, name: "Seafood", desc: "Fish, shellfish, and salt water"))
        categories.append(Category(id: 211, name: "Astronaut Food", desc: "Ice Cream, paste, and protein bars"))
        categories.append(Category(id: 291, name: "Bagles", desc: "Everything, asiago, and plain"))
        
        return categories
    }
}
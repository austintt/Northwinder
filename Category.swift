//
//  Category.swift
//  Northwinder
//
//  Created by Austin Tooley on 6/28/16.
//  Copyright © 2016 Classroom. All rights reserved.
//

import Foundation

class Category {
    let id: Int
    var name: String
    var desc: String
    
    init(id: Int, name: String = "", desc: String = "")
    {
        self.id = id
        self.name = name
        self.desc = desc
    }
}
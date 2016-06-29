//
//  Repository.swift
//  Northwinder
//
//  Created by Austin Tooley on 6/28/16.
//  Copyright © 2016 Classroom. All rights reserved.
//

import Foundation

class Repository {
    func fetchAllCategories(success fs: [Category] -> Void, failure ff: () -> Void) {
       
        let url = "http://svc.treeloop.net/product"
        let request = NSMutableURLRequest(URL: NSURL(string: url)!)
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithRequest(request, completionHandler: {
            data, response, error -> Void in
            
            //check for error
            if error != nil || data == nil {
                ff()
                return
            }
            //process data
            let json = JSON(data: data!)
            var categories = [Category]()
            for(_, subJson) in json {
                let c = Category(
                    id: subJson["CategoryID"].numberValue.integerValue,
                    name: subJson["CategoryName"].stringValue,
                    desc: subJson["Description"].stringValue)
                categories.append(c)
            }
            fs(categories)
        })
        task.resume()
    }
}
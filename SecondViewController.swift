//
//  SecondViewController.swift
//  Northwinder
//
//  Created by Austin Tooley on 6/28/16.
//  Copyright © 2016 Classroom. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    var category: Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text = category?.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

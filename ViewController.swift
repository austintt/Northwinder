//
//  ViewController.swift
//  Northwinder
//
//  Created by Austin Tooley on 6/28/16.
//  Copyright © 2016 Classroom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if identifier == "mySegue" {
            if textField.text?.characters.count > 0 {
                return true
            }
        }
        return false
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "mySegue"{
            let svc = segue.destinationViewController as! SecondViewController
            svc.inputLabelValue = textField.text!
            
        }
    }


}


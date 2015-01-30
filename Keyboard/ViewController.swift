//
//  ViewController.swift
//  Keyboard
//
//  Created by Mat Sletten on 10/22/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emptyTextField: UITextField!
    
    @IBOutlet weak var emptyLabel: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject)
    {
        emptyLabel.text = emptyTextField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!)
    {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool
    {
        emptyTextField.resignFirstResponder()
        return true
    }// called when 'return' key pressed. return NO to ignore.


}


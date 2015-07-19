//
//  SecondViewController.swift
//  wieleWyborow
//
//  Created by Appcamp on 19/07/15.
//  Copyright (c) 2015 Appcamp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var itemNameField: UITextField!
    
    @IBOutlet weak var detailsNameField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    @IBAction func ItemButton(sender: UIButton) {
        if( itemNameField.text.isEmpty)
        {
            displayAlert()
   
        }
        itemMgr.addItem(itemNameField.text, details: detailsNameField.text)
            self.tabBarController?.selectedIndex = 0
    
    }

    func displayAlert(){
        let alert = UIAlertController(title: " Empty Name", message: "You cannot save item without a name", preferredStyle: UIAlertControllerStyle.Alert)
    
    alert.addAction(UIAlertAction(title:"Dismiss",style:UIAlertActionStyle.Default, handler: nil))
    
        self.presentViewController(alert, animated: true, completion: nil)
    }

}



//
//  ViewController.swift
//  Postcard2
//
//  Created by David and Gloria Sciuto on 9/22/14.
//  Copyright (c) 2014 David C Sciuto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
// code will eval when we press button
    messageLabel.hidden = false
    messageLabel.text = enterAMessageTextField.text
        
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        
        mailButton.setTitle("Mail Sent", forState:UIControlState.Normal)
    }
}


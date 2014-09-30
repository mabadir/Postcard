//
//  ViewController.swift
//  Postcard
//
//  Created by Mina Youssef on 9/23/14.
//  Copyright (c) 2014 Biz Mascot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //  Code will evaluate when we press the button
        //  Adding comment to test commits
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        nameLabel.text = "Your message is sent to " + enterNameTextField.text
        nameLabel.textColor=UIColor.blueColor()
        nameLabel.hidden = false
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        sender.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}


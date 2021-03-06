//
//  ViewController.swift
//  PostCard
//
//  Created by Mary Grace Lucas on 5/31/15.
//  Copyright (c) 2015 Mary Grace Lucas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()

        nameLabel.hidden = false
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.text = enterNameTextField.text
      
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
        mailButton.setTitle("MAIL SENT", forState: UIControlState.Normal)
        
    }
    
    //Added this function as a way to practice trimmer coding
    func resignEveryKeyboard () {
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
    }
    
    
}
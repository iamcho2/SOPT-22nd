//
//  ViewController.swift
//  loginScroll
//
//  Created by admin on 2018. 4. 27..
//  Copyright © 2018년 choyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var idLabel: UITextField!
    @IBOutlet weak var PassLabel: UITextField!
    @IBOutlet weak var loginButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        
        loginButtonOutlet.isEnabled = false
        loginButtonOutlet.backgroundColor = UIColor.gray
  
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func loginButton(_ sender: Any) {
    }
    @IBAction func RegisterButton(_ sender: Any) {
    }
    @IBAction func idTextField(_ sender: Any) {
        if (self.idLabel.text == "" || self.idLabel.text == nil || self.PassLabel.text == "" || self.PassLabel.text == nil){
            loginButtonOutlet.isEnabled = false
            loginButtonOutlet.backgroundColor = UIColor.gray
        }else{
            loginButtonOutlet.isEnabled = true
            loginButtonOutlet.backgroundColor = UIColor.blue
        }
    }
    
    @IBAction func passTextField(_ sender: Any) {
        if (self.idLabel.text == "" || self.idLabel.text == nil || self.PassLabel.text == "" || self.PassLabel.text == nil){
            loginButtonOutlet.isEnabled = false
            loginButtonOutlet.backgroundColor = UIColor.gray
        }else{
            loginButtonOutlet.isEnabled = true
            loginButtonOutlet.backgroundColor = UIColor.blue
        }
    }
    
    
}


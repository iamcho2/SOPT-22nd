//
//  RegisterView.swift
//  soptLayout
//
//  Created by admin on 2018. 4. 5..
//  Copyright © 2018년 choyi. All rights reserved.
//

import UIKit

class RegisterView: UIViewController {
    
    
    @IBOutlet weak var IDLabel: UITextField!
    @IBOutlet weak var PassLabel: UITextField!
    @IBOutlet weak var NameLabel: UITextField!
    @IBOutlet weak var BirthLabel: UITextField!
    @IBOutlet weak var PartLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goButton(_ sender: Any) {
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "MyinfoView") as! MyinfoView
        myVC.passedID = IDLabel.text!
        myVC.passedPass = PassLabel.text!
        myVC.passedName = NameLabel.text!
        myVC.passedBirth = BirthLabel.text!
        myVC.passedPart = PartLabel.text!
        
        navigationController?.pushViewController(myVC, animated: true)
        
    }
    
    @IBAction func womanButton(_ sender: Any) {
    }
    
    @IBAction func manButton(_ sender: Any) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

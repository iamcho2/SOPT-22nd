//
//  MyinfoView.swift
//  soptLayout
//
//  Created by admin on 2018. 4. 5..
//  Copyright © 2018년 choyi. All rights reserved.
//

import UIKit

class MyinfoView: UIViewController {
    var passedID = "ddd"
    var passedPass = "dd"
    var passedName = "ddd"
    var passedBirth = "d"
    var passedPart = "d"
    
    @IBOutlet weak var Myid: UILabel!
    @IBOutlet weak var mypass: UILabel!
    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var myBirth: UILabel!
    @IBOutlet weak var myPart: UILabel!

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        Myid.text = passedID
        mypass.text = passedPass
        myName.text = passedName
        myBirth.text = passedBirth
        myPart.text = passedPart


        // Do any additional setup after loading the view.
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

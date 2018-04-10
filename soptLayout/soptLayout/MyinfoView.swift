//
//  MyinfoView.swift
//  soptLayout
//
//  Created by admin on 2018. 4. 5..
//  Copyright © 2018년 choyi. All rights reserved.
//

import UIKit

class MyinfoView: UIViewController{
    
    var passedID = "myID"
    var passedPass = "myPass"
    var passedName = "myName"
    var passedBirth = "myBirth"
    var passedPart = "myPart"
    var womanOrman = 0
 
    
    @IBOutlet weak var Myid: UILabel!
    @IBOutlet weak var mypass: UILabel!
    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var myBirth: UILabel!
    @IBOutlet weak var myPart: UILabel!
    @IBOutlet weak var myImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Myid.text = passedID
        mypass.text = passedPass
        myName.text = passedName
        myBirth.text = passedBirth
        myPart.text = passedPart

        if(womanOrman == 1){
            myImage.image = #imageLiteral(resourceName: "KakaoTalk_Photo_2018-04-03-00-57-52_27")
        }else{
            myImage.image = #imageLiteral(resourceName: "KakaoTalk_Photo_2018-04-03-00-57-50_39")
        }
        

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

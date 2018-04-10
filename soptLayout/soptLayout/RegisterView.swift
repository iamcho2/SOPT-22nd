//
//  RegisterView.swift
//  soptLayout
//
//  Created by admin on 2018. 4. 5..
//  Copyright © 2018년 choyi. All rights reserved.
//

import UIKit



class RegisterView: UIViewController {
    
    var womanClick = 0
    var manClick = 0
    var isWomanOrisMan = 0 // woman:2, man:1
    
    
    @IBOutlet weak var IDLabel: UITextField!
    @IBOutlet weak var PassLabel: UITextField!
    @IBOutlet weak var NameLabel: UITextField!
    @IBOutlet weak var BirthLabel: UITextField!
    @IBOutlet weak var PartLabel: UITextField!
    @IBOutlet weak var womanImage: UIButton!
    @IBOutlet weak var manImage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


    
    @IBAction func goButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "show", sender: self)
        
    }
    
    @IBAction func womanButton(_ sender: Any) {
        
        if(womanClick%2 == 0){ //짝수 번 눌렸을 때, 1이 되어야 함
            
            if(manClick%2 != 0){
            
              }else{
            
            womanClick += 1
            womanImage.setImage(#imageLiteral(resourceName: "KakaoTalk_Photo_2018-04-03-00-57-50_39"), for: .normal)
                isWomanOrisMan = 2
              }
            
            
        }else{ // 홀수 번
            womanClick += 1
            womanImage.setImage(#imageLiteral(resourceName: "KakaoTalk_Photo_2018-04-03-00-57-51_51"), for: .normal)
        }
        
    }
    
    
    @IBAction func manButton(_ sender: Any) {
        
        if(manClick%2 == 0){ //짝수 번 눌렸을 때, 1이 되어야 함
            
            if(womanClick%2 != 0){
                
            }else{
                print("hey")
                manClick += 1
                manImage.setImage(#imageLiteral(resourceName: "KakaoTalk_Photo_2018-04-03-00-57-52_27"), for: .normal)
                isWomanOrisMan = 1
            }
            
            
        }else{ // 홀수 번
            manClick += 1
            manImage.setImage(#imageLiteral(resourceName: "KakaoTalk_Photo_2018-04-03-00-57-53_42"), for: .normal)
        }
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "show"{
            
            let secondVC = segue.destination as! MyinfoView
            
            secondVC.passedID = IDLabel.text!
            secondVC.passedPass = PassLabel.text!
            secondVC.passedName = NameLabel.text!
            secondVC.passedBirth = BirthLabel.text!
            secondVC.passedPart = PartLabel.text!
            secondVC.womanOrman = isWomanOrisMan
            
        }
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

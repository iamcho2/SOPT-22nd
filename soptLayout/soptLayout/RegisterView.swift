//
//  RegisterView.swift
//  soptLayout
//
//  Created by admin on 2018. 4. 5..
//  Copyright © 2018년 choyi. All rights reserved.
//

import UIKit

extension UIView{
    func shake(duration: TimeInterval = 0.5, values: [CGFloat]) {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.duration = duration // You can set fix duration
        animation.values = values  // You can set fix values here also
        self.layer.add(animation, forKey: "shake")
    }
}

class RegisterView: UIViewController {
    
    var womanClick = 0
    var manClick = 0
    
    
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
    
    @IBAction func goButton(_ sender: Any) {
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "MyinfoView") as! MyinfoView
        myVC.passedID = IDLabel.text!
        myVC.passedPass = PassLabel.text!
        myVC.passedName = NameLabel.text!
        myVC.passedBirth = BirthLabel.text!
        myVC.passedPart = PartLabel.text!
        
        navigationController?.pushViewController(myVC, animated: true)
        
    }
    
    @IBAction func womanButton(button: UIButton) {
        
        if(womanClick%2 == 0){ //짝수 번 눌렸을 때, 1이 되어야 함
            womanClick += 1
            womanImage.setImage(#imageLiteral(resourceName: "KakaoTalk_Photo_2018-04-03-00-57-50_39"), for: .normal)
            
        }else{ // 홀수 번
            womanClick += 1
            womanImage.setImage(#imageLiteral(resourceName: "KakaoTalk_Photo_2018-04-03-00-57-51_51"), for: .normal)
        }
        
        if(manClick%2==0){
            button.shake(duration: 0.5, values: [-12.0, 12.0, -12.0, 12.0, -6.0, 6.0, -3.0, 3.0, 0.0])
        }
        
    }
    
    @IBAction func manButton(_ sender: Any) {
        
        if(manClick%2 == 0){ //짝수 번 눌렸을 때, 1이 되어야 함
            manClick += 1
            manImage.setImage(#imageLiteral(resourceName: "KakaoTalk_Photo_2018-04-03-00-57-52_27"), for: .normal)
            
        }else{ // 홀수 번
            manClick += 1
            manImage.setImage(#imageLiteral(resourceName: "KakaoTalk_Photo_2018-04-03-00-57-53_42"), for: .normal)
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

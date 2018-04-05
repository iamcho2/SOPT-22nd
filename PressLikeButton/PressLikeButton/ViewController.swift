//
//  ViewController.swift
//  PressLikeButton
//
//  Created by admin on 2018. 4. 3..
//  Copyright © 2018년 choyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var heartLabel: UILabel!
    var heart:Int=0
    @IBOutlet weak var joyLabel: UILabel!
    var joy:Int=0
    @IBOutlet weak var cryLabel: UILabel!
    var cry:Int=0
    @IBOutlet weak var angryLabel: UILabel!
    var angry:Int=0
    
    
    @IBOutlet weak var heartOutlet: UIButton!
    
    @IBAction func heartPressed(_ sender: Any) {
        
        if(heart%2 == 0){ //짝수 번 눌렸을 때, 1이 되어야 함
            myLabel.text = "좋아요 >_<"
            myLabel.isHidden = false
            heart += 1
            heartLabel.text = "1"
            heartOutlet.setImage(#imageLiteral(resourceName: "heart"), for: .normal)
            
        }else{ // 홀수 번
            myLabel.isHidden = true
            heart += 1
            heartLabel.text = "0"
            heartOutlet.setImage(#imageLiteral(resourceName: "heartEmpty"), for: .normal)
        }
    }
    
    @IBAction func joyPressed(_ sender: Any) {
        if(joy%2 == 0){ //짝수 번 눌렸을 때, 1이 되어야 함
            myLabel.text = "웃겨요 ㅋ.ㅋ"
            myLabel.isHidden = false
            joy += 1
            joyLabel.text = "1"
            
        }else{ // 홀수 번
            myLabel.isHidden = true
            joy += 1
            joyLabel.text = "0"
        }
        
    }
    
    @IBAction func cryPressed(_ sender: Any) {
        if(cry%2 == 0){ //짝수 번 눌렸을 때, 1이 되어야 함
            myLabel.text = "슬퍼요 ㅠ.ㅠ"
            myLabel.isHidden = false
            cry += 1
            cryLabel.text = "1"
            
        }else{ // 홀수 번
            myLabel.isHidden = true
            cry += 1
            cryLabel.text = "0"
        }

    }
    
    @IBAction func angryPressed(_ sender: Any) {
        if(angry%2 == 0){ //짝수 번 눌렸을 때, 1이 되어야 함
            myLabel.text = "화나요 ㅡ.ㅡ"
            myLabel.isHidden = false
            angry += 1
            angryLabel.text = "1"
            
        }else{ // 홀수 번
            myLabel.isHidden = true
            angry += 1
            angryLabel.text = "0"
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


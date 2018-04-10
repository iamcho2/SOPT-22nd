//
//  ViewController.swift
//  randomCalculateGame
//
//  Created by admin on 2018. 4. 5..
//  Copyright © 2018년 choyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var numOfCorrect: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var startButtonOutlet: UIButton!
    
    //timer
    var mTimer : Timer?
    var number = 15
    let interval = 1.0
    let timeSelector: Selector = #selector(ViewController.timerCallback)
    var num = -1
    var correct = 0

    
    @IBOutlet weak var firstNum: UILabel!
    @IBOutlet weak var myOperator: UILabel!
    @IBOutlet weak var secondNum: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var myAnswer: UITextField!
    
   var gameOver = 0;

    
    @IBAction func pressedStart(_ sender: Any) {
        
        startButton.isHidden = true
        firstNum.isHidden = false
        myOperator.isHidden = false
        secondNum.isHidden = false
        
        number = 15
        
        if let timer = mTimer {
            //timer 객체가 nil 이 아닌경우에는 invalid 상태에만 시작한다
            if !timer.isValid {
                /** 1초마다 timerCallback함수를 호출하는 타이머 */
                mTimer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
            }
        }else{
            //timer 객체가 nil 인 경우에 객체를 생성하고 타이머를 시작한다
            /** 1초마다 timerCallback함수를 호출하는 타이머 */
            mTimer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        }
        
        firstNum.text = String(arc4random_uniform(99)+1)
        secondNum.text = String(arc4random_uniform(99)+1)
        
        while(Int(firstNum.text!)!<=Int(secondNum.text!)!){
            firstNum.text = String(arc4random_uniform(99)+1)
            secondNum.text = String(arc4random_uniform(99)+1)
        }
        
        randomOperator()
        
        correct = 0
        numOfCorrect.text = String(correct)
        
        numOfCorrect.font = UIFont.systemFont(ofSize: 17.0)
        numOfCorrect.textColor = UIColor.black
        correctLabel.font = UIFont.systemFont(ofSize: 17.0)
        correctLabel.textColor = UIColor.black
    }

    //타이머가 호출하는 콜백함수
    @objc func timerCallback() {
        timerLabel.text = String(number)
        number = number - 1
        
        if number == -1{
            mTimer?.invalidate()
            gameOver = 1
            
            
            startButton.isHidden = false
            firstNum.isHidden = true
            myOperator.isHidden = true
            secondNum.isHidden = true
            
            number = 15
            numOfCorrect.font = UIFont.boldSystemFont(ofSize: 17.0)
            numOfCorrect.textColor = UIColor.red
            correctLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
            correctLabel.textColor = UIColor.red
            
            
            myAnswer.text = ""
        }
    }
    
    func startAgain(){
        
        number = 15
        mTimer?.invalidate()
        
        if let timer = mTimer {
            //timer 객체가 nil 이 아닌경우에는 invalid 상태에만 시작한다
            if !timer.isValid {
                /** 1초마다 timerCallback함수를 호출하는 타이머 */
                mTimer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
            }
        }else{
            //timer 객체가 nil 인 경우에 객체를 생성하고 타이머를 시작한다
            /** 1초마다 timerCallback함수를 호출하는 타이머 */
            mTimer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        }
        
        firstNum.text = String(arc4random_uniform(99)+1)
        secondNum.text = String(arc4random_uniform(99)+1)
        randomOperator()
        
        myAnswer.text = ""
    }
    
    
    @IBAction func confirm(_ sender: Any) {
        
        if(num==0){
            if(myAnswer.text == String(Int(firstNum.text!)!+Int(secondNum.text!)!)){
                correct = correct + 1
                numOfCorrect.text = String(correct)
                startAgain()
            }
        }
        else if(num==1){ if(myAnswer.text == String(Int(firstNum.text!)! - Int(secondNum.text!)!)){
            correct = correct + 1
            numOfCorrect.text = String(correct)
            startAgain()
            }
            
        }
        else {if(myAnswer.text == String(Int(firstNum.text!)!*Int(secondNum.text!)!)){
            correct = correct + 1
            numOfCorrect.text = String(correct)
            startAgain()}
        
        }}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNum.isHidden = true
        myOperator.isHidden = true
        secondNum.isHidden = true
        
        confirmButton.backgroundColor = UIColor.blue
        startButtonOutlet.backgroundColor = UIColor.lightGray
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func randomOperator(){
        num = Int(arc4random_uniform(3))
        
        if(num==0){ myOperator.text = "+"}
        else if(num==1){ myOperator.text = "-"}
        else {myOperator.text = "x"}
        
    }
    

    
}


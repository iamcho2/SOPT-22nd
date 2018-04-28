//
//  SecondViewController.swift
//  loginScroll
//
//  Created by admin on 2018. 4. 27..
//  Copyright © 2018년 choyi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var womanImage: UIButton!
    @IBOutlet weak var manImage: UIButton!
    
    @IBOutlet weak var idLabel: UITextField!
    @IBOutlet weak var passLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    
    
    var womanClick = 0
    var manClick = 0
    var isWomanOrisMan = 0 // woman:2, man:1
    
    
    let partArray = ["iOS", "ANDROID", "WEB", "기획", "디자인", "서버"]
    let pickerview = UIPickerView()
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerview.delegate = self
        pickerview.dataSource = self
        pickerTextField.inputView = pickerview
        
        datePicker.datePickerMode = UIDatePickerMode.date
        dateTextField.inputView = datePicker
        datePicker.addTarget(self, action: #selector(SecondViewController.datePickerValueChanged(sender:)), for: UIControlEvents.valueChanged)
        
        initPicker()
        // Do any additional setup after loading the view.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return partArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerTextField.text = partArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return partArray[row]
    }
    
    @objc func selectedPicker(){
        //changedTextField(pickerTextField)
        view.endEditing(true)
    }
    
    @objc func selectedDatePicker(){
        //changedTextField(pickerTextField)
        view.endEditing(true)
    }
    
    func initPicker(){
        pickerview.delegate = self
        pickerview.dataSource = self
        
        pickerTextField.inputView = pickerview
        let bar = UIToolbar()
        bar.sizeToFit()
        
        pickerTextField.inputAccessoryView = bar
        dateTextField.inputAccessoryView = bar
        let doneButton = UIBarButtonItem (title: "확인", style: .done, target: self, action: #selector(selectedPicker))
        let doneButton2 = UIBarButtonItem(title: "확인", style: .done, target: self, action: #selector(selectedDatePicker))
        bar.setItems([doneButton], animated: true)
        
    }
        
    @objc func datePickerValueChanged(sender : UIDatePicker){
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        formatter.timeStyle = DateFormatter.Style.none
        dateTextField.text = formatter.string(from: sender.date)
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
    @IBAction func goButton(_ sender: UIButton) {
            performSegue(withIdentifier: "show", sender: self)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "show"{
            
            let secondVC = segue.destination as! ThirdViewController
            
            secondVC.passedID = idLabel.text!
            secondVC.passedPass = passLabel.text!
            secondVC.passedName = nameLabel.text!
            secondVC.passedBirth = dateTextField.text!
            secondVC.passedPart = pickerTextField.text!
            secondVC.womanOrman = isWomanOrisMan
            
        }
    }
        
}


//
//  ThirdViewController.swift
//  loginScroll
//
//  Created by admin on 2018. 4. 27..
//  Copyright © 2018년 choyi. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var passedID = "myID"
    var passedPass = "myPass"
    var passedName = "myName"
    var passedBirth = "myBirth"
    var passedPart = "myPart"
    var womanOrman = 0
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var myBirth: UILabel!
    @IBOutlet weak var myId: UILabel!
    @IBOutlet weak var myPass: UILabel!
    @IBOutlet weak var eachPart: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myId.text = passedID
        myPass.text = passedPass
        myName.text = passedName
        myBirth.text = passedBirth
        
        if(womanOrman == 1){
            myImage.image = #imageLiteral(resourceName: "KakaoTalk_Photo_2018-04-03-00-57-52_27")
        }else{
            myImage.image = #imageLiteral(resourceName: "KakaoTalk_Photo_2018-04-03-00-57-50_39")
        }

        // Do any additional setup after loading the view.
    }

    func partText(sender:UILabel){
        if passedPart == "iOS"{
            eachPart.text = "*iOS 파트\n            - Xcode(통합개발환경)와 Swift를 이용해 iOS 어플리케이션 프로그래밍을 배웁니다.\n            - Interface builder를 이용한 레이아웃 구성 및 네트워크 통신 방법에 대해 배웁니다.\n            - 매주 실습 세미나를 통해 iOS개발 기초부터 심화까지 1인 1앱 개발을 목표로 공부합니다.\n            - Open API 사용법을 숙지합니다."
        }else if passedPart == "ANDROID"{
            eachPart.text = "*안드로이드 파트\n            - 안드로이드 스튜디오를 이용해 기초적인 네이티브 어플리케이션 제작 방법에 대해서 배웁니다.\n            - API 사용법 및 통신에 대해서 배웁니다.\n            - 기초적인 어플리케이션의 디자인 방법에 대해 배웁니다.\n            - 각 세미나 실습 결과물 + 과제를 컴포넌트로 분리하여 8주의 세미나 후에 1~8 주차의 내용이 담긴 하나의 결과물을            남겨 앱잼을 진행하는데 많은 도움이 될 수 있도록 하는 것을 목표로 합니다.\n            - 새로운 안드로이드 공식 언어인 코틀린에 대해 배웁니다."
        }else if passedPart == "WEB"{
            eachPart.text = "*Web Front-End 파트\n            - 기본적인 HTML, CSS 부터 컴포넌트 기반 웹 개발에 대해서 배웁니다.\n            - 매주 실습 세미나를 통해 Vue.js의 기초부터 심화까지 공부합니다.\n            - API 사용법 및 통신에 대해서 배웁니다."
        }else if passedPart == "기획"{
            eachPart.text = "*기획 파트\n            - 아이디어 디벨롭핑 시간을 통해 본인의 아이디어를 발전시키고 기획안을 완성하는 것을 목표로 합니다.\n            - 디자인 및 개발파트와의 협업을 위해 필요한 정보를 습득합니다.\n            - 기획자이자 프로젝트 매니저로서의 역할 수행이 가능하도록 합니다."
        }else if passedPart == "디자인"{
            eachPart.text = "*디자인 파트\n            - 매주 세미나에서의 강연과 실습을 통해 UI/ UX에 관련하여 디자이너가 알아야 할 개념을 숙지합니다.\n            - 이를 디자인 툴로 적용할 수 있는 것을 목표로 합니다.\n            - 개발자와의 수월한 소통을 위하여 사용되는 협업툴에 관련된 스터디를 진행합니다."
        }else if passedPart == "서버"{
            eachPart.text = "*서버 파트\n            - Node.js를 이용해 AWS상에서 서버를 구성하는 방법을 배워봅니다.\n            - 클라이언트와 서버, DB 사이의 연동과정을 이해하고 구성합니다.\n            - 코딩뿐만 아니라 ERD 설계, API Reference 작성 등 프로젝트에서 백엔드를 담당하여 진행하는 과정 전체를\n            경험합니다."
        }
    }
    @IBAction func rewindSegue(_ sender: UIStoryboardSegue) {
        self.performSegue(withIdentifier: unwind, sender: self)
    }
    
}

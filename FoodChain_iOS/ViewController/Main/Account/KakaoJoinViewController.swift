//
//  KakaoJoinViewController.swift
//  FoodChain_iOS
//
//  Created by 신동규 on 2018. 7. 3..
//  Copyright © 2018년 신동규. All rights reserved.
//

import UIKit

class KakaoJoinViewController: UIViewController {
    
    var kakaoUserId :String = ""
    var KakaoNickname:String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
       
        
    }
    @IBAction func kakaoJoinAction(_ sender: Any) {
        
        let mainview = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "favoriteview")
        
        present(mainview, animated: true, completion: nil)
        
    }
    
    

}

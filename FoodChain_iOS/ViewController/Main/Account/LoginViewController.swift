//
//  ViewController.swift
//  FoodChain_iOS
//
//  Created by 신동규 on 2018. 7. 1..
//  Copyright © 2018년 신동규. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    func getAppDelegate() -> AppDelegate!{
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
        if let appDelegate = getAppDelegate() {
            appDelegate.loginViewController = self
        }else{
            print("Appdelegate is nil")
        }
  
    }
   

    @IBAction func KakaoLoginAction(_ sender: Any) {
        
       KakaoJoinModule().KakaoLogin(view: self)
        
    }
    
    @IBAction func LoginAction(_ sender: Any) {
        
        let mainview = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tabbarview") as! TabBarViewController
        
        present(mainview, animated: true, completion: nil)
        
        
        
        
    }
    
    
}



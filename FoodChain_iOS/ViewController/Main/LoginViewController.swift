//
//  ViewController.swift
//  FoodChain_iOS
//
//  Created by 신동규 on 2018. 7. 1..
//  Copyright © 2018년 신동규. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var continueLB: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func LoginAction(_ sender: Any) {
        
//        let mainview = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tabbarview") as! TabBarViewController
//
//        present(mainview, animated: true, completion: nil
//        )
        
        let session :KOSession = KOSession.shared()
        
        if session.isOpen() {
            session.close()
        }
        
        session.presentingViewController = self
        session.open(completionHandler: {(error) -> Void in
            
            // 카카오 로그인 화면에서 벋어날 시 호출됨. (취소일 때도 표시됨)
            if error != nil {
                print(error?.localizedDescription ?? "")
            }else if session.isOpen() {
                KOSessionTask.userMeTask(completion: { (profile, error)  -> Void in
                    if profile != nil{
                        print(profile!)
                    }
                    else{
                        print(error!)
                    }
                })
            
            } else {
                print("isNotOpen")
            }
        })
        
        
       
       
    }
    
//    @IBAction func ContinueAction(_ sender: Any) {
//
//        let favoriteview = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "favoriteview")
//        present(favoriteview, animated: true, completion: nil)
//
//
//
//    }
    

}


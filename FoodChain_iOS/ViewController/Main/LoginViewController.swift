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
        
        let mainview = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tabbarview") as! TabBarViewController
        
        present(mainview, animated: true, completion: nil
        )
       
    }
    
    @IBAction func ContinueAction(_ sender: Any) {
        
        let favoriteview = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "favoriteview") 
        present(favoriteview, animated: true, completion: nil)
        
        
        
    }
    

}


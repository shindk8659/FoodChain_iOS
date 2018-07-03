//
//  JoinViewController.swift
//  FoodChain_iOS
//
//  Created by 신동규 on 2018. 7. 3..
//  Copyright © 2018년 신동규. All rights reserved.
//

import UIKit

class JoinViewController: UIViewController {

    @IBOutlet weak var JoinBtn: UIButton!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    @IBOutlet weak var passcomTF: UITextField!
    @IBOutlet weak var numberTF: UITextField!
    @IBOutlet weak var confrimBtn: UIButton!
    
    var cheak = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        nameTF.setBottomBorder()
        emailTF.setBottomBorder()
        passcomTF.setBottomBorder()
        passTF.setBottomBorder()
        numberTF.setBottomBorder()
    

        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: self, action: #selector(JoinViewController.back(sender:)))
        
       newBackButton.setBackgroundImage(#imageLiteral(resourceName: "Back"), for: .normal, barMetrics: .default)
        self.navigationItem.leftBarButtonItem = newBackButton
    
        
    }
    
    @objc func back(sender: UIBarButtonItem) {
        
        
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func confirmtermBtn(_ sender: UIButton) {
        
        if cheak == 0{
            sender.setImage(#imageLiteral(resourceName: "Yes-Color"), for: .normal)
            cheak = 1
        }
        else {
            sender.setImage(#imageLiteral(resourceName: "Yes"), for: .normal)
            cheak = 0
        }
        
    }
    
    @IBAction func JoinAction(_ sender: Any) {
        
        let mainview = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "favoriteview")
        
        present(mainview, animated: true, completion: nil)
    }
    
    

}

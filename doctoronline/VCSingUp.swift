//
//  VCSingUp.swift
//  doctoronline
//
//  Created by Antonio Cortes on 6/11/18.
//  Copyright © 2018 antoniocortes. All rights reserved.
//

import UIKit
import Firebase
class VCSingUp: UIViewController {
    @IBOutlet weak var txt_email: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    @IBOutlet weak var txt_confirmation_password: UITextField!
    @IBOutlet weak var btn_SingUp: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func singUp(_ sender: Any) {
        guard let email = txt_email.text, let password = txt_password.text, let password2 = txt_confirmation_password.text else { return }
        if password == password2 {
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            if error != nil{
                
                return
            }
            else {
                
            }
      }
    }
  }
}

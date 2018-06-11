//
//  VCLogIn.swift
//  doctoronline
//
//  Created by Antonio Cortes on 6/6/18.
//  Copyright © 2018 antoniocortes. All rights reserved.
//

import UIKit
import Firebase
class VCLogIn: UIViewController {

    @IBOutlet weak var txt_email: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func LogIn(_ sender: AnyObject) {
        guard let email = txt_email.text, let password = txt_password.text else { return }
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error != nil{
                //fail
            }
            else{
                //success
            }
        }
    }
    
    
}

//
//  ViewController.swift
//  doctoronline
//
//  Created by Antonio Cortes on 6/6/18.
//  Copyright © 2018 antoniocortes. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var btnLogIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func didTapEmailLogin(_ sender: AnyObject) {
        
        guard let email = emailField.text, let password = passwordField.text else { return }
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error != nil{
                //fail
            }
            else{
                //success
            }
        }
        // [END headless_email_auth]
        
        
    }

}


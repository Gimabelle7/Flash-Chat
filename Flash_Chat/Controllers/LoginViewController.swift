//
//  LoginViewController.swift
//  Flash_Chat
//
//  Created by Gimabelle Garcia vasquez on 16/2/23.
//

import UIKit
import FirebaseCore
import FirebaseAuth



class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextField.text , let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult , error in
                if let e = error {
                    print(e)
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
}

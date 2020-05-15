//
//  LoginViewController.swift
//  LoginWithFirebaseApp
//
//  Created by nonoho.honda on 2020/05/15.
//  Copyright © 2020 nonoho.honda. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var dontHaveAccountButton: UILabel!
    
    @IBAction func tappedDontHaveAccountButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tappedLoginButton(_ sender: Any) {
        print("tapped Login Button")
        
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        
        Auth.auth().signIn(withEmail: email, password: password) { (res, err) in
            if let err = err {
                print("ログイン情報の取得に失敗しました: ", err)
                return
            }
            
            print("ログイン情報の取得に成功しました")
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10
        loginButton.isEnabled = false
        loginButton.backgroundColor = UIColor.rgb(red: 255, green: 221, blue: 187)
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }

}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField){
           let emailIsEmpty = emailTextField.text?.isEmpty ?? true
           let passwordIsEmpty = passwordTextField.text?.isEmpty ?? true
           
        if emailIsEmpty || passwordIsEmpty {
               loginButton.isEnabled = false
               loginButton.backgroundColor = UIColor.rgb(red: 255, green: 221, blue: 187)
           } else {
               loginButton.isEnabled = true
               loginButton.backgroundColor = UIColor.rgb(red: 255, green: 141, blue: 0)
           }
       }
    
}

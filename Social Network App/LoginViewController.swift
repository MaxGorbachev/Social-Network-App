//
//  LoginViewController.swift
//  Social Network App
//
//  Created by Максим on 30.12.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBAction func loginButtonPressed(_ sender: Any) {
        guard let login = loginTextField.text,
              let password = passwordTextField.text else {return}

        if login == "root",
           password == "12345" {
            print("Success")
        } else {
            print("Login error")
        }
    }

}

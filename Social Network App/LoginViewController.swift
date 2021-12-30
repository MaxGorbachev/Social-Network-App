//
//  LoginViewController.swift
//  Social Network App
//
//  Created by Максим on 30.12.2021.

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!


    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShown(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)

    }

    @objc func keyboardDidShown (_ notification: Notification) {
        guard let keyboardHeigt = ((notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue)?.height else {return}

        let insets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardHeigt + 150, right: 0)
        scrollView.contentInset = insets
        scrollView.scrollIndicatorInsets = insets
    }

    
    @IBAction func loginButtonPressed(_ sender: Any) {
        guard let login = loginField.text,
              let password = passwordField.text else {return}

        if login == "root",
           password == "12345" {
            print("Login succeed")
        } else {
            print("Login failed")
        }
    }


}

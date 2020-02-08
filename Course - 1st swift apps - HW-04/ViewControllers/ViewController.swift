//
//  ViewController.swift
//  Course - 1st swift apps - HW-04
//
//  Created by Lev Litvak on 08.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: Private properties
    private var user = User(username: "Alexey", password: "888")
    
    // MARK: Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tbvc = segue.destination as? UITabBarController else { return }
        guard let wvc = tbvc.viewControllers?.first as? WellcomeViewController else { return }
        
        wvc.username = usernameTextField.text
    }
    
    // MARK: IBActions
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        guard let username = usernameTextField.text, username.count > 0 else {
            showAlert(title: "Enter username", message: "You should enter username to login")
            return
        }
        guard let password = passwordTextField.text else { return }
        
        if !Users.shared.checkUsernamePassword(username: username, password: password) {
            showAlert(title: "Error", message: "Incorrect username or password")
            return
        }
        
        performSegue(withIdentifier: "ToWellcomeVC", sender: self)
    }
    
    @IBAction func forgotUsernameButtonPressed() {
        showAlert(title: "Username",
                  message: "Theese usernames are registered:\n \(Users.shared.usersList)")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        guard let username = usernameTextField.text else { return }
        guard username.count > 0 else {
            showAlert(title: "Enter username", message: "You should enter username first")
            return
        }
        
        if let password = Users.shared.getPassword(username: username) {
            showAlert(title: "Password", message: "Your password is \(password)")
        } else {
            showAlert(title: "Error", message: "User \(username) doesn't exist")
        }
    }
    
    @IBAction func unwindToViewController(segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: ViewController


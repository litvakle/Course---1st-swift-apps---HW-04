//
//  RegisterNewUserViewController.swift
//  Course - 1st swift apps - HW-04
//
//  Created by Lev Litvak on 08.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

import UIKit

class RegisterNewUserViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    //MARK: IBActions
    @IBAction func registerNiewUserButtonPressed() {
        guard let username = usernameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        let registerNewUser = Users.shared.registerNewUser(username: username, password: password)
        if registerNewUser.result {
            showAlert(title: "Success", message: registerNewUser.info, dismissNeeded: true)
        } else {
            showAlert(title: "Error", message: registerNewUser.info)
        }
    }
}

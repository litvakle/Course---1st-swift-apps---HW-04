//
//  UIViewControllerExtensions.swift
//  Course - 1st swift apps - HW-04
//
//  Created by Lev Litvak on 08.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

import UIKit

// MARK: UIViewController extentions
extension UIViewController: UITextFieldDelegate {
    
    func showAlert(title: String, message: String, dismissNeeded: Bool = false) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { _ in
            if dismissNeeded {
                self.dismiss(animated: true)
            }
        }
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

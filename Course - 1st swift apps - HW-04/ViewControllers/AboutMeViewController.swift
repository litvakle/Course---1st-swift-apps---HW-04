//
//  AboutMeViewController.swift
//  Course - 1st swift apps - HW-04
//
//  Created by Lev Litvak on 08.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var aboutMeTextView: UITextView!
    
    // MARK: Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutMeTextView.text = Data.shared.aboutMeText
    }
}

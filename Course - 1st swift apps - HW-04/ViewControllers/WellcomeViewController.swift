//
//  WellcomeViewController.swift
//  Course - 1st swift apps - HW-04
//
//  Created by Lev Litvak on 08.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

import UIKit

class WellcomeViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var wellcomeLabel: UILabel!
    @IBOutlet weak var thanksLabel: UILabel!
    
    // MARK: Private properties
    var username: String!
    
    // MARK: Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wellcomeLabel.text = "Wellcome, \(username ?? "")"
        thanksLabel.text = Data.shared.thanksText
    }
}

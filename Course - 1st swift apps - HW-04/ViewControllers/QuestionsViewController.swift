//
//  QuestionsViewController.swift
//  Course - 1st swift apps - HW-04
//
//  Created by Lev Litvak on 08.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var questionsTextView: UITextView!
    
    // MARK: Override functions
    override func viewDidLoad() {
        super.viewDidLoad()

        questionsTextView.text = "У меня есть несколько вопросов к тебе:\n\n"
        for (index, question) in Data.shared.questions.enumerated() {
            questionsTextView.text += "\(index+1). \(question)\n\n"
        }
    }
}

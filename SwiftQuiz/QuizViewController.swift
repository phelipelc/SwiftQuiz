//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by GVP on 12/01/18.
//  Copyright © 2018 Phelipe Lopes. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var viTimer: UIView!
    @IBOutlet weak var lbQustion: UILabel!
    @IBOutlet var btAnswers: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func selectAnswer(_ sender: UIButton) {
    }
    
}

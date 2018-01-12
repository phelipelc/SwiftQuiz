//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by GVP on 12/01/18.
//  Copyright © 2018 Phelipe Lopes. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        lbAnswered.text = "Perguntas respondidas: \(totalAnswer)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas erradas: \(totalAnswer - totalCorrectAnswers)"
        
        let score = totalCorrectAnswers*100/totalAnswer
        lbScore.text = "\(score)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
}

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
    
    let quizManager = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viTimer.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 60.0, delay: 0, options: .curveLinear, animations: {
            self.viTimer.frame.size.width = 0
        }) { (sucess) in
              self.showResults()
        }
        getNewQuiz()
    }
    
    func getNewQuiz(){
        quizManager.refreshQuizes()
        lbQustion.text = quizManager.question
        for i in 0..<quizManager.options.count{
            let option = quizManager.options[i]
            let button = btAnswers[i]
            button.setTitle(option, for: .normal)
        }
    }
    
    func showResults(){
        performSegue(withIdentifier: "resultSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController =  segue.destination as! ResultViewController
        resultViewController.totalAnswer = quizManager.totalAnswers
        resultViewController.totalCorrectAnswers = quizManager.totalCorrectAnswers
    }

    @IBAction func selectAnswer(_ sender: UIButton) {
        let index = btAnswers.index(of: sender)!
        quizManager.validateAnswer(index: index)
        getNewQuiz()
    }
    
}

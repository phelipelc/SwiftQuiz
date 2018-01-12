//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by GVP on 12/01/18.
//  Copyright © 2018 Phelipe Lopes. All rights reserved.
//

import Foundation

class Quiz {
    let question: String
    let options: [String]
    private let correctedAnswer: String
    
    
    init(question: String, options: [String], correctAnswer: String){
        self.question = question
        self.options = options
        self.correctedAnswer = correctAnswer
    }
    func validateOption(_ index: Int)-> Bool{
     let answer = options[index]
        return answer == correctedAnswer
    }

    deinit {
        print("liberou quiz da memória")
    }
    
}

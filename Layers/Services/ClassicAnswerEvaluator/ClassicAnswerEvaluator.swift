//
//  ClassicAnswerEvaluator.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28.02.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import Foundation

class ClassicAnswerEvaluator : AnswerEvaluatorInterface {
    var questions : [QuestionDomainModel]?
    var correctAnswers = 0
    var wrongAnswers = 0
    
    func register(questions questions:[QuestionDomainModel]) {
        self.questions = questions
    }
    
    func register(answer answer:Int, forQuestion question:Int){
        if let questions = self.questions where questions.count > question {
            if answer == questions[question].correctAnswer {
                correctAnswers = correctAnswers + 1
            } else {
                wrongAnswers = wrongAnswers + 1
            }
        }
        
    }
    
    func mark() -> String {
        if correctAnswers > wrongAnswers {
            return "A"
        } else {
            return "B"
        }

    }
}

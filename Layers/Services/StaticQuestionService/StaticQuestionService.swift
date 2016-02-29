//
//  StaticQuestionService.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28.02.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import Foundation

class StaticQuestionService: QuestionServiceInterface {

    func data() -> [QuestionDomainModel] {
        
        var q1 = QuestionDomainModel()
        q1.number = 1
        q1.questionText = "What color is it?"
        q1.answers = ["red","green","blue","black"]
        q1.correctAnswer = 3
        
        var q2 = QuestionDomainModel()
        q2.number = 2
        q2.questionText = "What color is it?"
        q2.answers = ["red","green","blue","black"]
        q2.correctAnswer = 2

        var q3 = QuestionDomainModel()
        q3.number = 3
        q3.questionText = "What color is it?"
        q3.answers = ["red","green","blue","black"]
        q3.correctAnswer = 1

        return [q1,q2,q3]
    }
}

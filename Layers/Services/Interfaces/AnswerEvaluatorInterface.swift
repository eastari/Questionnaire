//
//  AnswerEvaluatorInterface.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28.02.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import Foundation

protocol AnswerEvaluatorInterface : class{
    func register(questions questions:[QuestionDomainModel])
    func register(answer answer:Int, forQuestion question:Int)
    func mark() -> String
}

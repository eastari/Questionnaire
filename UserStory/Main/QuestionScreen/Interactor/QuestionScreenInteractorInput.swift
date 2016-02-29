//
//  QuestionScreenInteractorInput.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28/02/2016.
//  Copyright © 2016 Eugeny. All rights reserved.
//

import Foundation

protocol QuestionScreenInteractorInput 
{
    func loadQuestions()
    func registerAnswer(answer answer:Int, forQuestion question:Int)
    func loadMark()
}
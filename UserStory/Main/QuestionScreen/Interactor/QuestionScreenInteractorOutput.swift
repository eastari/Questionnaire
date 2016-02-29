//
//  QuestionScreenInteractorOutput.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28/02/2016.
//  Copyright © 2016 Eugeny. All rights reserved.
//

import Foundation

protocol QuestionScreenInteractorOutput: class 
{

    func questionsDidLoad(questions:[QuestionDomainModel])
    func questionDidFailedToLoad()
    
    func markDidLoad(mark:Int)
    func markDidFailedToLoad()
}
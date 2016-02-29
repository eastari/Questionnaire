//
//  QuestionDomainModel.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28.02.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import Foundation

struct QuestionDomainModel {
    var number = -1
    var questionText = ""
    var answers = [String?]()
    var correctAnswer = -1
}

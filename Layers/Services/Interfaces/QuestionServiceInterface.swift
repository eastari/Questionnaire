//
//  QuestionServiceInterface.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28.02.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import Foundation

protocol QuestionServiceInterface: class {
    func data() -> [QuestionDomainModel]
}

//
//  QuestionScreenModuleInput.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28/02/2016.
//  Copyright © 2016 Eugeny. All rights reserved.
//

import UIKit

protocol QuestionScreenModuleInput: class 
{
    func configureModule()
    func present(fromController controller: UIViewController)
}
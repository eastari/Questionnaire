//
//  QuestionScreenRouter.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28/02/2016.
//  Copyright © 2016 Eugeny. All rights reserved.
//

import UIKit

class QuestionScreenRouter: QuestionScreenRouterInput
{
    var presenter: QuestionScreenPresenter!
    weak var viewController : UIViewController?
    
    func present(fromController controller: UIViewController) {
        controller.presentViewController(self.viewController!, animated: true) { () -> Void in }
    }
    
}
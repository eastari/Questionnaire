//
//  BaseScreenRouter.swift
//  Questionnaire
//
//  Created by Евгений Стариков on 28.02.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

class BaseScreenRouter: BaseScreenRouterInput {
    var presenter: BaseScreenPresenter!
    weak var controller: UIViewController!
    
    func presentFromWindow(window: UIWindow) {
        window.rootViewController = controller
        window.makeKeyAndVisible()
    }
}

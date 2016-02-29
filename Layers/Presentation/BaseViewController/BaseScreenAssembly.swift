//
//  BaseScreenAssembly.swift
//  Questionnaire
//
//  Created by Евгений Стариков on 28.02.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

class BaseScreenAssembly {
    class func createModule() -> BaseScreenModuleInput {
        let vc = initializeViewController()
        let interactor = BaseScreenInteractor()
        let presenter = BaseScreenPresenter()
        let router = BaseScreenRouter()
        
        router.presenter = presenter
        router.controller = vc
        
        vc.output = presenter
        
        interactor.output = presenter
        
        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = router
        
        return presenter
    }
    
    private class func initializeViewController() -> BaseViewController {
        let vc = BaseViewController()
        return vc
    }
}


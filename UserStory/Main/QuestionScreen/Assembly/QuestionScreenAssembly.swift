//
//  QuestionScreenAssembly.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28/02/2016.
//  Copyright © 2016 Eugeny. All rights reserved.
//

import UIKit

class QuestionScreenAssembly 
{
    class func createModule() -> QuestionScreenModuleInput 
    {
        let vc = initializeViewController()
        let interactor = QuestionScreenInteractor()
        let presenter = QuestionScreenPresenter()
        let router = QuestionScreenRouter()

        router.presenter = presenter
        router.viewController = vc
        
        vc.output = presenter
        //uncomment if need view preloading
        //vc.view.isFirstResponder()

        interactor.output = presenter

        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = router
        presenter.configureModule()

        return presenter
    }
	
	private class func initializeViewController() -> QuestionScreenViewController {
	        let sb = UIStoryboard(name: "Main", bundle: nil)
	        let vc = sb.instantiateViewControllerWithIdentifier("QuestionScreenViewController") as! QuestionScreenViewController
    
	        return vc
	    } 
}

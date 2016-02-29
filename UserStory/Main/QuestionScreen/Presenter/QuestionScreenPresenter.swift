//
//  QuestionScreenPresenter.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28/02/2016.
//  Copyright © 2016 Eugeny. All rights reserved.
//

import UIKit

class QuestionScreenPresenter: QuestionScreenModuleInput, QuestionScreenViewOutput, QuestionScreenInteractorOutput
{
    var view: QuestionScreenViewInput!
    var interactor: QuestionScreenInteractorInput!
    var router: QuestionScreenRouterInput!

    //MARK: - QuestionScreenViewOutput
    func viewIsReady() 
	{

    }

    //MARK: - QuestionScreenModuleInput
    func configureModule() 
	{

    }

    func present(fromController controller: UIViewController)
    {
        view.prepareForPresentation()
        interactor.loadQuestions()
        self.router.present(fromController: controller)
        
    }
    
    //MARK: QuestionScreenInteractorOutput
    
    func questionsDidLoad(questions:[QuestionDomainModel])
    {
        
    }
    
    func questionDidFailedToLoad(){}
    
    func markDidLoad(mark:Int){}
    func markDidFailedToLoad(){}
}
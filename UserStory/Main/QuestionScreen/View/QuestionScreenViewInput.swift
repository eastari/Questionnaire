//
//  QuestionScreenViewInput.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28/02/2016.
//  Copyright © 2016 Eugeny. All rights reserved.
//

protocol QuestionScreenViewInput: class 
{
    /**
        @author Maksim Bazarov
        Setup initial state of the view
    */
    func setupInitialState()
    
    func prepareForPresentation()
    func updateWithData(data: QuestionDomainModel)
    func updateWithoutData()
    
}

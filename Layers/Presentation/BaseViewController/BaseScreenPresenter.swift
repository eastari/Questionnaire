//
//  BaseScreenPresenter.swift
//  Questionnaire
//
//  Created by Евгений Стариков on 28.02.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

class BaseScreenPresenter: BaseScreenModuleInput, BaseScreenViewOutput, BaseScreenInteractorOutput {
    var view: BaseScreenViewInput!
    var interactor: BaseScreenInteractorInput!
    var router: BaseScreenRouterInput!
    weak var output : BaseScreenModuleOutput?
    
    //MARK: - LoadingScreenViewOutput
    func viewIsReady() {
        view.animateLoading();
        self.interactor.loadResources()
    }
    
    //MARK: - LoadingScreenModuleInput
    func presentFromWindow(window: UIWindow) {
        self.router.presentFromWindow(window)
    }
    
    //MARK: - LoadScreenInteractor output
    func dataIsReady() {
        self.view.stopAnimating()
        self.output?.loadingDidFinished()
    }
    
    func controller() -> UIViewController {
        return view.controller()
    }
    
}

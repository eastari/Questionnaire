//
// Created by Maksim Bazarov on 28.02.16.
// Copyright (c) 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

class RootRouter: BaseScreenModuleOutput {

    let baseScreen = BaseScreenAssembly.createModule()
    let questionScreen = QuestionScreenAssembly.createModule()
    
    func setupRouter(window window: UIWindow) {
        baseScreen.output = self
        baseScreen.presentFromWindow(window)
    }
    func loadingDidFinished() {
        questionScreen.present(fromController: baseScreen.controller())
    }
    

    func present(fromWindow window: UIWindow) {
        questionScreen.present(fromController: baseScreen.controller())
    }    
    
}

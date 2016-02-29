//
//  BaseScreenInteractor.swift
//  Questionnaire
//
//  Created by Евгений Стариков on 28.02.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import Foundation

class BaseScreenInteractor: BaseScreenInteractorInput {
    weak var output: BaseScreenInteractorOutput!
    
    func loadResources() {
        
        let delay = 1.5 * Double(NSEC_PER_SEC)
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        dispatch_after(time, dispatch_get_main_queue(), {
            self.finishLoadingSimulation()
        })
    }
    
    func finishLoadingSimulation() {
        self.output.dataIsReady()
    }
}

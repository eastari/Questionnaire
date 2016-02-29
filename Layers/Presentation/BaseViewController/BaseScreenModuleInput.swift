//
//  BaseScreenModuleInput.swift
//  Questionnaire
//
//  Created by Евгений Стариков on 28.02.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

protocol BaseScreenModuleInput: class {
    weak var output: BaseScreenModuleOutput? { get set }
    func presentFromWindow(window: UIWindow)
    
    func controller() -> UIViewController
    
}

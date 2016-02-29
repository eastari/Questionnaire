//
//  BaseScreenViewInput.swift
//  Questionnaire
//
//  Created by Евгений Стариков on 28.02.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

protocol BaseScreenViewInput: class {
    
    func controller() -> UIViewController
    
    func animateLoading()
    func stopAnimating()
    
}

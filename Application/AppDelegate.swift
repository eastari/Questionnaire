//
//  AppDelegate.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28.02.16.
//  Copyright © 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let rootRouter = RootRouter()


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        rootRouter.setupRouter(window: window!)
        
        return true
    }

    

}


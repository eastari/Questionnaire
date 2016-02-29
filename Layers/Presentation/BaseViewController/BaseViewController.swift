//
// Created by Maksim Bazarov on 28.02.16.
// Copyright (c) 2016 Maksim Bazarov. All rights reserved.
//

import UIKit

class BaseViewController : UIViewController, BaseScreenViewInput {
    
    weak var output: BaseScreenViewOutput!
    
    lazy var activityIndicator : CustomActivityIndicatorView = {
        let image : UIImage = UIImage(named: "loading")!
        return CustomActivityIndicatorView(image: image)
    }()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        output.viewIsReady()
    }
    
    func addLoadingIndicator () {
        self.view.addSubview(activityIndicator)
        activityIndicator.center = self.view.center
    }

    
    func animateLoading()
    {
        // показать вью и включить крутилку
         addLoadingIndicator()
         activityIndicator.startAnimating()
        
    }
    
    func stopAnimating()
    {
        // убрать вью и выключить крутилку
         activityIndicator.stopAnimating()
    }
    
    func controller() -> UIViewController {
        return self
    }
}



    
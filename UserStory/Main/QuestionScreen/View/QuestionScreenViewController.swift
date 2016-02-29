//
//  QuestionScreenViewController.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28/02/2016.
//  Copyright © 2016 Eugeny. All rights reserved.
//

import UIKit

class QuestionScreenViewController: UIViewController, QuestionScreenViewInput {
    weak var output: QuestionScreenViewOutput!
    var question : QuestionDomainModel?
    
    //MARK: Outlets
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerSegmentedControl: UISegmentedControl!

    //MARK: Actions

    @IBAction func nextButtonDidSelect(sender: AnyObject) {
        
    }

    //MARK: - Life cycle
    override func viewDidLoad() 
	{
        super.viewDidLoad()
        output.viewIsReady()
        showNoDataPlaceHolder()
    }

    //MARK: - QuestionScreenViewInput
    func setupInitialState() 
	{

    }
    
    func prepareForPresentation()
    {
        //startLoading()
    }
    
    func updateWithData(data: QuestionDomainModel)
    {
        showQuestion(data)
        //stopLoading()
    }
    
    func updateWithoutData()
    {
        showNoDataPlaceHolder()
        //stopLoading()
    }

    //MARK: Private
    func showNoDataPlaceHolder()
    {
        //сделать компонет содержащий вью, и лейбл в центре с надписью нет данных
        // показать его здесь над всеми вьюхами
        
        let contentsFrame = self.view.frame
        let viewForAnimation = UIImageView (frame: CGRect (x: 0, y: 0, width: contentsFrame.width, height: contentsFrame.height))
        viewForAnimation.backgroundColor = UIColor.whiteColor()
        let image : UIImage = UIImage(named: "NoData")!
        viewForAnimation.image = image
        self.view.addSubview(viewForAnimation)
        
    }
    
    func showQuestion(data: QuestionDomainModel)
    {
        questionLabel.text = data.questionText
    }
}

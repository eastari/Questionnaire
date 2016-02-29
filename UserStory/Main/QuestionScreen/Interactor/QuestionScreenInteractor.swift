//
//  QuestionScreenInteractor.swift
//  Questionnaire
//
//  Created by Maksim Bazarov on 28/02/2016.
//  Copyright © 2016 Eugeny. All rights reserved.
//

class QuestionScreenInteractor: QuestionScreenInteractorInput 
{
    weak var output: QuestionScreenInteractorOutput!
    var questionService : QuestionServiceInterface?
    var answerService : AnswerEvaluatorInterface?
    
    func loadQuestions()
    {
        if let questionService = self.questionService where questionService.data().count > 0 {
            self.output.questionsDidLoad(questionService.data())
        } else {
            self.output.questionDidFailedToLoad()
        }
        
        
    }
    
    func registerAnswer(answer answer:Int, forQuestion question:Int)
    {
        
    }
    
    func loadMark()
    {
        
    }

    

}
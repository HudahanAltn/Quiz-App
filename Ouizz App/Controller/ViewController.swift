//
//  ViewController.swift
//  Ouizz App
//
//  Created by Hüdahan Altun on 9.10.2022.
//

import UIKit




class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView! //progress bar
    
    var quizBrainObject = QuizBrain()//creating object
    
    var progressPassed:Int = 0
    var totalCount:Int = 0
    var questionCount:Int = 0
   

    var scoree = score()
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "to2"{
            
            let gidilecekVC = segue.destination as? ViewController2
            
            gidilecekVC?.scoree2 = scoree
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        print("v1 yüklendi")
        totalCount = quizBrainObject.getQuestionArrayCount()
        
        updateQuesitonUI()
        
        progressBar.progress = 0
        
    }

    override func viewWillAppear(_ animated: Bool) {
        
        scoree.resetStatistic()
        
        print("v1 e geçiliyor")
        progressPassed = 0
        
        totalCount = quizBrainObject.getQuestionArrayCount()
        questionCount = 0
        
        updateQuesitonUI()//load question when start app
        
        progressBar.progress = 0
    }
    
    @IBAction func answerButtonClicked(_ sender: UIButton) {
        
      
        let userAnswer = sender.titleLabel?.text! as? String // when user clicked button,it will take button.

        
        if quizBrainObject.checkAnser(userAnswer: userAnswer!){// //if answer is  correct button will turn green
            
            UIView.animate(withDuration: 1, animations: {
                
                sender.backgroundColor = .green
            })
            
            scoree.trueCount += 1
        }else{
            //if answer is not correct button will turn red
            
            UIView.animate(withDuration: 1, animations: {
                
                sender.backgroundColor = .red
            })
            
            scoree.falseCount += 1
        }
            
            
        
        if quizBrainObject.getQuestionNumber() + 1 < quizBrainObject.getQuestionArrayCount(){//array size security
            
            quizBrainObject.setQuestionNumber(num: 1)
        }
        
        updateQuesitonUI()
        
        
    }
    
    
    func updateQuesitonUI(){// update question
        
        if questionCount < totalCount{
            
            questionLabel.text = quizBrainObject.getQuestionText()//it send quesiton to label
            
           
            UIView.animate(withDuration: 2, animations: {// delaying
                
                self.trueButton.backgroundColor = .clear
                self.falseButton.backgroundColor = .clear
                self.progressBar.setProgress(Float(self.progressPassed) / Float(self.totalCount), animated: true)
            })

            
            progressPassed += 1

            questionCount += 1
        }else{
            
            quizBrainObject.resetQuestionNumber()
            
            
            
            UIView.animate(withDuration: 2, animations: {

                self.performSegue(withIdentifier: "to2", sender: self.scoree)
            })

        }
        
    }
}


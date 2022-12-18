//
//  QuizBrain.swift
//  Ouizz App
//
//  Created by Hüdahan Altun on 11.10.2022.
//

import Foundation



struct QuizBrain{
    
    //sabit yapı
    private let questionArray:[ Question] = [//sorular ve cevapları structa mevcut

        Question(text: "NY is capital of USA", answer: "False"),
        Question(text: "Germany is an european country", answer: "True"),
        Question(text: "Turkey is a member of European Union", answer: "False"),
        Question(text: "The Alps is in Switzerland", answer: "True"),
        Question(text: "The whale is an mammalia animals", answer: "True"),
        Question(text: "Atatürk is a founder of Republic of Turkey", answer: "True"),
        Question(text:"Jennifer Lawrance starred Harry Potter Series",answer: "False")
    ]
    
    private var questionNumber:Int = 0// sorulara erişim için yaratılan değişken buda model'da olmalı
    
    
    func checkAnser(userAnswer:String)->Bool{//bu method bize kullanıcının verdiği cevaplaın doğru mu yanlış mı olduğunu söylicek
        
        if userAnswer == questionArray[questionNumber].answer{
            
            
            return true
            
        }else{
            
            return false
            
        }
        
    }
    
    
    func getQuestionNumber()->Int{
        
        return questionNumber
    }
    
    func getQuestionArrayCount()->Int{
        
        return questionArray.count
    }
    
    func getQuestionText()->String{
        
        return  questionArray[questionNumber].text!
    }
    
    mutating func setQuestionNumber(num:Int){
        
        questionNumber += num
    }
    
    mutating func resetQuestionNumber(){
        
        questionNumber = 0
    }
    
}

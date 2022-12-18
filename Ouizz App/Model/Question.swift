//
//  Question.swift
//  Ouizz App
//
//  Created by Hüdahan Altun on 9.10.2022.
//

import Foundation



struct Question{
    
    let text:String?
    let answer:String?
    
    init(text:String,answer:String){
        
        self.text = text
        self.answer = answer
    }
    
}

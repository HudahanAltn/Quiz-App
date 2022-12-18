//
//  Score.swift
//  Ouizz App
//
//  Created by Hüdahan Altun on 11.10.2022.
//

import Foundation


struct score{
    
    var trueCount:Int = 0
    var falseCount:Int = 0
    
    mutating func resetStatistic(){
        
        trueCount = 0
        falseCount = 0
    }
}

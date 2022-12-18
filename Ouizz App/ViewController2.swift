//
//  ViewController2.swift
//  Ouizz App
//
//  Created by Hüdahan Altun on 11.10.2022.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    var scoree2 = score()
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()

        print("v2 ye geçildi")
        scoreLabel.text = "Correct : \(scoree2.trueCount) - Wrong:\(scoree2.falseCount)"
    }
    
    @IBAction func tryAgainButton(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
   

}

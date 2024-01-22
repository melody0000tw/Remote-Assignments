//
//  ViewController.swift
//  AppWorks_Week2_assignment_ASimpleApp
//
//  Created by Melody Lee on 2024/1/22.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var funFactTextLabel: UILabel!
    
    @IBOutlet weak var ShowAnotherFunFactButton: UIButton!
    
    let colors: [UIColor] = [
        .red, .orange, .yellow, .green, .blue, .purple, .brown,
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactTextLabel.text = String(text[0])
        // Do any additional setup after loading the view.
    }
    @IBAction func ShowAnotherFunFact(_ sender: UIButton) {
        let funFact = text.randomElement()!
        let color = colors.randomElement()!
        
        funFactTextLabel.text = funFact
        view.backgroundColor = color
        
        // 想要把button的text也改成background color但跑做不到QQ
        ShowAnotherFunFactButton.setTitleColor(color, for: .normal)
    }
    
}


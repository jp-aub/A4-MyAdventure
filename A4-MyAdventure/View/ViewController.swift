//
//  ViewController.swift
//  A4-MyAdventure
//
//  Created by JP on 2/2/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var adventurePrompt: UILabel!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    
    var advLogic = AdventureLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // UI Modifications
        choiceOne.titleLabel?.textAlignment = .center;
        choiceTwo.titleLabel?.textAlignment = .center;
        choiceOne.layer.masksToBounds = true;
        choiceOne.layer.cornerRadius = 16;
        choiceTwo.layer.masksToBounds = true;
        choiceTwo.layer.cornerRadius = 16;
        adventurePrompt.layer.masksToBounds = true;
        adventurePrompt.layer.cornerRadius = 50;
        adventurePrompt.layer.borderWidth = 1;
        adventurePrompt.layer.borderColor = UIColor.black.cgColor;
        
        
        // Get initial prompts and choices
        getAdventure()
    }

    @IBAction func choiceOneSelected(_ sender: UIButton) {
        if (!advLogic.selectPathOne()) {
            choiceOne.isHidden = true;
            choiceTwo.isHidden = true;
        }
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(getAdventure), userInfo: nil, repeats: false)
    }
    
    
    @IBAction func choiceTwoSelected(_ sender: UIButton) {
        if (!advLogic.selectPathTwo()) {
            choiceOne.isHidden = true;
            choiceTwo.isHidden = true;
        }
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(getAdventure), userInfo: nil, repeats: false)
    }
    
    @objc func getAdventure() {
        adventurePrompt.text = advLogic.getPrompt()
        choiceOne.setTitle(advLogic.getChoiceOne(), for: .normal)
        choiceTwo.setTitle(advLogic.getChoiceTwo(), for: .normal)
    }
}

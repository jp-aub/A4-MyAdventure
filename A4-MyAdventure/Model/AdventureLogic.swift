//
//  AdventureLogic.swift
//  A4-MyAdventure
//
//  Created by JP on 2/2/23.
//

import Foundation

struct AdventureLogic {
    
    var currentStep : Int = 0
    
    let adventure = [
            AdventureChoice(0,
                            "After a turbulent night on the seas your boat breaks apart. You wash up on the shore of a deserted island",
                            "Build a Fire",
                            "Search for Boat Debris",
                            1,
                            2),
            AdventureChoice(1,
                            "As night rapidly approaches, you successfully build a fire!",
                           "Go hunting in the night to find something to cook on the fire",
                           "Make shelter and sleep for the night",
                            3,
                            4),
            AdventureChoice(2,
                            "You search for debris and find a container of food. It should last one week if rationed.",
                            "Eat all the food immediately",
                            "Ration the food and build a shelter for the night",
                            5,
                            6),
            AdventureChoice(3,
                            "You step out into the night. Unable to see anything in the darkness, you trip and fall, fatally wounding yourself.",
                            "",
                            "",
                            -1,
                            -1),
            AdventureChoice(4,
                            "You make a shelter for the night. Upon waking up in the morning you're greeted by a rescue boat on the shore. You have been saved.",
                           "",
                           "",
                           -1,
                           -1),
            AdventureChoice(5,
                            "Unable to control yourself, you eat all the food immediately. You are unable to find food over the next five days and sadly starve.",
                            "",
                            "",
                            -1,
                            -1),
            AdventureChoice(6,
                            "You ration the food for seven days. It takes six days for you to be rescued. You have been saved!",
                            "",
                            "",
                            -1,
                            -1)
            ]
    
    mutating func getPrompt() -> String {
        return adventure[currentStep].adventure_path
    }
    
    func getChoiceOne() -> String {
        return adventure[currentStep].choice_one
    }
    
    func getChoiceTwo() -> String {
        return adventure[currentStep].choice_two
    }
    
    mutating func selectPathOne() -> Bool {
        currentStep = adventure[currentStep].choice_one_path
        if adventure[currentStep].choice_one_path != -1 {
            return true;
        }
        return false;
    }
    
    mutating func selectPathTwo() -> Bool{
        currentStep = adventure[currentStep].choice_two_path
        if adventure[currentStep].choice_two_path != -1 {
            return true;
        }
        return false;
    }
}

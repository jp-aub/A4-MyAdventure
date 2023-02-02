//
//  Adventure.swift
//  A4-MyAdventure
//
//  Created by JP on 2/2/23.
//

import Foundation

struct AdventureChoice {
    
    init (_ prev_choice: Int, _ adv_path: String, _ c_one: String, _ c_two: String, _ c_one_path: Int, _ c_two_path: Int) {
        previous_choice = prev_choice
        adventure_path = adv_path
        choice_one = c_one
        choice_two = c_two
        choice_one_path = c_one_path
        choice_two_path = c_two_path
    }
    
    var previous_choice: Int
    var adventure_path: String
    var choice_one: String
    var choice_two: String
    var choice_one_path: Int
    var choice_two_path: Int
}

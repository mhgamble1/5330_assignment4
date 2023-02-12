//
//  Prompt.swift
//  MyAdventure
//
//  Created by Mark Gamble on 2/12/23.
//

import Foundation

struct Prompt {
    init(_ prompt_arg: String, _ option_one_arg: String, _ option_two_arg: String) {
        prompt = prompt_arg
        option_one = option_one_arg
        option_two = option_two_arg
    }
    
    var prompt: String
    var option_one: String
    var option_two: String
}

//
//  Path.swift
//  MyAdventure
//
//  Created by Mark Gamble on 2/12/23.
//

import Foundation

struct Path {
    init(_ round_one_arg: [Prompt], _ round_two_arg: [Prompt], _ round_three_arg: [Prompt], _ outcome_arg: [Outcome]) {
        round_one = round_one_arg
        round_two = round_two_arg
        round_three = round_three_arg
        outcome = outcome_arg
    }

    var round_one: [Prompt]
    var round_two: [Prompt]
    var round_three: [Prompt]
    var outcome: [Outcome]
}
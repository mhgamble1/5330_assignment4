//
//  Outcome.swift
//  MyAdventure
//
//  Created by Mark Gamble on 2/12/23.
//

import Foundation

struct Outcome {
    init(_ outcome_arg: String, _ pass_fail_arg: Bool) {
        outcome = outcome_arg
        pass_fail = pass_fail_arg
    }
    
    var outcome: String
    var pass_fail: Bool
}

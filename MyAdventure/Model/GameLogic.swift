//
//  GameLogic.swift
//  MyAdventure
//
//  Created by Mark Gamble on 2/12/23.
//

import Foundation

struct GameLogic {
    var promptIndex: Int = 0
    
    let prompt = [
        // 0
        Prompt("You come to a lake. You must reach the other end. Do you go: ",
              "left",
              "right"),
        // 1
        Prompt("You encounter and unruly heard of cows. Do you: ",
              "bribe them",
              "intimidate them"),
        // 2
        Prompt("You reach a steep cliff. Do you: ",
              "climb",
              "go around"),
        // 3
        Prompt("Do you attempt to bribe the cows with: ",
              "food",
              "gold"),
        // 4
        Prompt("You are challenged by a tough-looking bull. Do you: ",
              "stand",
              "flee"),
        // 5
        Prompt("You reach a section where you must jump to the next hold. Do you: ",
              "jump",
              "climb down"),
        // 6
        Prompt("You hike wide around the cliff, but find your path blocked by quicksand. Do you: ",
              "leap over it",
              "turn back")
    ]
}

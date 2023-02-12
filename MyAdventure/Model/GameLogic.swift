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
    Prompt(
      "You come to a lake. You must reach the other end. Do you go: ",
      "left",
      "right"),
    // 1
    Prompt(
      "You encounter and unruly heard of cows. Do you: ",
      "bribe them",
      "intimidate them"),
    // 2
    Prompt(
      "You reach a steep cliff. Do you: ",
      "climb",
      "go around"),
    // 3
    Prompt(
      "Do you attempt to bribe the cows with: ",
      "food",
      "gold"),
    // 4
    Prompt(
      "You are challenged by a tough-looking bull. Do you: ",
      "stand",
      "flee"),
    // 5
    Prompt(
      "You reach a section where you must jump to the next hold. Do you: ",
      "jump",
      "climb down"),
    // 6
    Prompt(
      "You hike wide around the cliff, but find your path blocked by quicksand. Do you: ",
      "leap over it",
      "turn back"),
  ]

  let outcome = [
    // 7
    Outcome(
      "The cows are won over to your cause. You pass and reach the other side.",
      true
    ),
    // 8
    Outcome(
      "The cows have no use for gold. They mock you mercilessly. You have failed in your quest.",
      false
    ),
    // 9
    Outcome(
      "After a long melee, you prevail. You reach the other side without incident.",
      true),
    // 10
    Outcome(
      "You have shamefully run away. You have failed in your quest.",
      false),
    // 11
    Outcome(
      "You succeed in your leap of faith. You finish the climb and make it to the other side of the lake.",
      true),
    // 12
    Outcome(
      "You have shamefully turned back. You have failed in your quest",
      false),
    // 13
    Outcome(
      "You successfully jumped over the quicksand. You make it to the other side of the lake",
      true),
    // 14
    Outcome(
      "You have shamefully turned back. You have failed in your quest.",
      false),
  ]

  mutating func pickLeft() {
    promptIndex = promptIndex * 2 + 1
  }

  mutating func pickRight() {
    promptIndex = promptIndex * 2
  }

  func getOutcome() -> String {
    return outcome[promptIndex].outcome
  }

  mutating func resetGame() {
    promptIndex = 0
  }

  func getNextPrompt() -> String {
    return prompt[promptIndex].prompt
  }

  func getOptionOne() -> String {
    return prompt[promptIndex].option_one
  }

  func getOptionTwo() -> String {
    return prompt[promptIndex].option_two
  }
}

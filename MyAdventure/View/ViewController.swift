//
//  ViewController.swift
//  MyAdventure
//
//  Created by Mark Gamble on 2/12/23.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var Prompt: UILabel!
  @IBOutlet weak var leftButton: UIButton!
  @IBOutlet weak var rightButton: UIButton!

  var gameLogic = GameLogic()

  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
  }

  @IBAction func leftButtonSubmit(_ sender: Any) {
    if gameLogic.isGameOver {
      gameLogic.resetGame()
    } else {
      gameLogic.pickLeft()
    }
    updateUI()
  }

  @IBAction func rightButtonSubmit(_ sender: Any) {
    // if gameLogic.isGameOver {
    //   gameLogic.resetGame()
    // } else {
    //     gameLogic.pickRight()
    // }
    gameLogic.pickRight()
    updateUI()
  }

  func updateUI() {
    if gameLogic.isGameOver {
      Prompt.text = gameLogic.getOutcome()
      leftButton.setTitle("Reset Game", for: .normal)
      //   hide the right button
      rightButton.isHidden = true
      //   rightButton.setTitle("Game", for: .normal)
      if gameLogic.isGameWon {
        // set the prompt's text color to green
        Prompt.textColor = .green
      } else {
        // set the prompt's text color to red
        Prompt.textColor = .red
      }
    } else {
      // set the prompt's text color to white
      Prompt.textColor = .white
      // show the right button
      rightButton.isHidden = false
      Prompt.text = gameLogic.getNextPrompt()
      leftButton.setTitle(gameLogic.getNextLeft(), for: .normal)
      rightButton.setTitle(gameLogic.getNextRight(), for: .normal)
    }
  }

}

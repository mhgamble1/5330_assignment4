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
    // Do any additional setup after loading the view.
  }

  @IBAction func leftButtonSubmit(_ sender: Any) {
    if gameLogic.isGameOver() {
      // restart the game
      gameLogic.restart()
    } else {
        gameLogic.pickLeft()
    }
    updateUI()
  }

  @IBAction func rightButtonSubmit(_ sender: Any) {
    if gameLogic.isGameOver() {
      // restart the game
      gameLogic.restart()
    } else {
        gameLogic.pickRight()
    }
    updateUI()
  }

  func updateUI() {
    if gameLogic.isGameOver() {
      leftButton.isHidden = true
      rightButton.isHidden = true
      Prompt.text = gameLogic.getOutcome()
    } else {
      Prompt.text = gameLogic.getPrompt()
      leftButton.setTitle(gameLogic.getLeftButton(), for: .normal)
      rightButton.setTitle(gameLogic.getRightButton(), for: .normal)
    }
  }

}

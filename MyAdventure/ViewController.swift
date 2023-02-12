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
        gameLogic.pickLeft()
        updateUI()
    }
    
    @IBAction func rightButtonSubmit(_ sender: Any) {
        gameLogic.pickRight()
        updateUI()
    }
    
    func updateUI() {
        Prompt.text = gameLogic.getNextPrompt()
        leftButton.setTitle(gameLogic.getNextLeft(), for: .normal)
        rightButton.setTitle(gameLogic.getNextRight(), for: .normal)
    }
    
}


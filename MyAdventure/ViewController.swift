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

    @IBAction func buttonSubmit(_ sender: UIButton) {
        
    }
    
    func updateUI() {
        Prompt.text = gameLogic.getNextPrompt()
    }
    
}


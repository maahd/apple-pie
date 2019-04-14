//
//  ViewController.swift
//  Apple Pie
//
//  Created by Maahd Shahzad on 4/13/19.
//  Copyright © 2019 Maahd Shahzad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords = ["buccaneer", "swift", "glorious", "incandascent", "bug", "program"]
    
    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totalLosses = 0
    
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    var currentGame: Game!
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
}


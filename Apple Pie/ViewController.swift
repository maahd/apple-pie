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
    
    func newRound() {
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
}


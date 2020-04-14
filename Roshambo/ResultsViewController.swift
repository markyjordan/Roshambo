//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Marky Jordan on 4/1/20.
//  Copyright © 2020 Marky Jordan. All rights reserved.
//

import UIKit

// the enum handshape represents the user and opponents play options
enum HandShape: String {
    case Rock = "Rock"
    case Paper = "Paper"
    case Scissors = "Scissors"
    
    // generate opponent's play
    static func generatePlay() -> HandShape {
        let shapes = ["Rock", "Paper", "Scissors"]
        let randomChoice = Int.random(in: 0...2)
        return HandShape(rawValue: shapes[randomChoice])!
    }
}

// MARK: ResultsViewController: UIViewController

class ResultsViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultStatement: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    
    // MARK: Properties
    
    var userChoice: HandShape!
    var opponentChoice: HandShape = HandShape.generatePlay()
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        displayResult()
    }
    
    func displayResult() {
        var imageName: String
        var text: String
        let matchup = "\(userChoice.rawValue) vs. \(opponentChoice.rawValue)"

        switch (userChoice!, opponentChoice) {
        case let (user, opponent) where user == opponent:
            text = "\(matchup): it's a tie!"
            imageName = "tie"
        case (.Rock, .Scissors), (.Paper, .Rock), (.Scissors, .Paper):
            text = "You win with \(matchup)!"
            imageName = "\(userChoice.rawValue)-\(opponentChoice.rawValue)"
        default:
            text = "You lose with \(matchup) :(."
            imageName = "\(opponentChoice.rawValue)-\(userChoice.rawValue)"
        }

        imageName = imageName.lowercased()
        resultImage.image = UIImage(named: imageName)
        resultStatement.text = text
    }
    
    // MARK: Actions
    
    @IBAction func playAgain(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

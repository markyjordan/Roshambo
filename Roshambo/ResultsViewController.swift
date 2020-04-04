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
        let randomChoice = Int.random(in: 0...3)
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: Actions
    
}

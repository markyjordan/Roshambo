//
//  BeginMatchViewController.swift
//  Roshambo
//
//  Created by Marky Jordan on 4/1/20.
//  Copyright © 2020 Marky Jordan. All rights reserved.
//

import UIKit

// MARK: BeginMatchViewController: UIViewController

class BeginMatchViewController: UIViewController {

    // MARK: Outlets/Properties
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: Actions

    @IBAction func playRock(_ sender: Any) {
        
    }
    @IBAction func playPaper(_ sender: Any) {
        
    }
    @IBAction func playScissors(_ sender: Any) {
        
    }
    
    // Generate opponent's play
    
    enum HandShapes: String {
        case rock = "rock"
        case paper = "paper"
        case scissors = "scissors"
        
        func generateOpponentsPlay() {
            
        }
    }
    
    func determineWinner() {
        
    }
    
    
}

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
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playLabel: UILabel!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: Actions

    
    
    
    
    // Generate opponent's play
    
    enum PlayOptions: String {
        case rock = "rock"
        case paper = "paper"
        case scissors = "scissors"
        
        func generateOpponentsPlay() {
            
        }
    }
    
    func determineWinner() {
        
    }
    
    
}

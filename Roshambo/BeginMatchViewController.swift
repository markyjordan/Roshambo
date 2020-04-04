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

    // programmatic approach
    @IBAction func playRock(_ sender: Any) {
        var controller: ResultsViewController
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        present(controller, animated: true, completion: nil)
    }
    
    // programmatic approach with segue
    @IBAction func playPaper(_ sender: Any) {
        
    }
    
    // segue only approach
    @IBAction func playScissors(_ sender: Any) {
        
    }
    
    // get hand shape
    func getHandShape() {
        
    }

    
    
    func determineWinner() {
        
    }
}

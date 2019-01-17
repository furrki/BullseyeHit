//
//  MainVC.swift
//  BullseyeHit
//
//  Created by Admin on 17.01.2019.
//  Copyright © 2019 furrki. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var tauntLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Game.shared.initializeGame()
        refreshScene()
    }
    
    @IBAction func HitMeButtonClicked(_ sender: Any) {
        let taunt = Game.shared.doMove(shot: Int(slider!.value))
        tauntLabel.text = String(taunt)
        refreshScene()
    }
    
    func refreshScene(){
        scoreLabel.text = String(Game.shared.score)
        roundLabel.text = String(Game.shared.round)
        targetLabel.text = String(Game.shared.target)
    }
    
}


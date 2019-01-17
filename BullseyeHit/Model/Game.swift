//
//  Game.swift
//  BullseyeHit
//
//  Created by Admin on 17.01.2019.
//  Copyright © 2019 furrki. All rights reserved.
//

import Foundation

class Game {
    static var shared = Game()
    static var pointScale: [Int] = [200, 100, 40, 10, 0]
    static var taunts: [String] = ["Whoa! You Hit!", "So Close! Ahhh!", "It Hurts!", "It Didn't Hurt Much :)", "Hahaha What Are You Doing :D"]
    
    var round = 1
    var score = 0
    
    var target = 100
    
    
    func doMove(shot: Int) -> String{
        let diff = abs(shot - target)
        if diff == 0 {
            score += Game.pointScale[0]
            return Game.taunts[0]
        } else if diff < 5 {
            score += Game.pointScale[1]
            return Game.taunts[1]
        } else if diff < 10 {
            score += Game.pointScale[2]
            return Game.taunts[2]
        } else if diff < 20 {
            score += Game.pointScale[3]
            return Game.taunts[3]
        } else {
            score += Game.pointScale[4]
            return Game.taunts[4]
        }
    }
    
    func generateLevel(){
        target = Int.random(in: 1...100)
    }
    
    init(){
        generateLevel()
    }
    
    deinit{
        
    }
    
}

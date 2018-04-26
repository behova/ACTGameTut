//
//  GamePlayScene.swift
//  ACTGame
//
//  Created by iMac on 4/25/18.
//  Copyright © 2018 HipsterTrikster. All rights reserved.
//

import SpriteKit

class GamePlayScene: SKScene {
    
    var background: SKSpriteNode = {
        var sprite = SKSpriteNode(imageNamed: "ground_04")
        sprite.scaleTo(screenWidthPercentage: 1.0)
        sprite.scaleTo(screenHeightPercentage: 1.0)
        sprite.zPosition = 0
        
        return sprite
    }()
    
    var score = 0
    
    lazy var scoreLabel: SKLabelNode = {
        var label = SKLabelNode(fontNamed: "StockyRegular")
        label.fontSize = CGFloat.universalFont(size: 46)
        label.zPosition = 10
        label.color = SKColor.white
        label.horizontalAlignmentMode = .center
        label.verticalAlignmentMode = .center
        label.text = "\(score)"
        
        return label
    }()
    override func didMove(to view: SKView) {
        
        setupNodes()
        addNodes()
        setupCrates()
        
    }
    
    func setupNodes() {
        background.position = CGPoint(x: ScreenSize.width * 0.5, y: ScreenSize.height * 0.5)
        scoreLabel.position = CGPoint(x: ScreenSize.width * 0.5, y: ScreenSize.height * 0.92)
    }
    
    func addNodes() {
        addChild(background)
        addChild(scoreLabel)
    }
    
    func startNewBoard() {
        removeAllCrates()
        setupCrates()
    }
    
    func setupCrates() {
        for _ in 0...29 {
            
            let imageNamed = "crate_\(Int(CGFloat.random(1.0, max: 45.0)))"
            
            let crate = BDButton(imageNamed: imageNamed) {
                print("Wrong crate tapped")
                self.handleWrongCrateTapped()
            }
            crate.name = "crate"
            crate.scaleTo(ScreenWithPercentage: CGFloat.random(0.48, max: 0.5))
            crate.position = CGPoint(x: ScreenSize.width * CGFloat.random(0.1, max: 0.9), y: ScreenSize.height * CGFloat.random(0.1, max: 0.9))
            crate.zPosition = 1
            addChild(crate)
        }
        let imageNamed = "crate_\(Int(CGFloat.random(1.0, max: 45.0)))"
        
        let winnerCrate = BDButton(imageNamed: imageNamed) {
            print("Winner crate tapped")
            self.handleWinnerCrateTapped()
        }
        
       winnerCrate.name = "crate"
        winnerCrate.scaleTo(ScreenWithPercentage: CGFloat.random(0.51, max: 0.55))
        winnerCrate.zPosition = 2
        winnerCrate.position = CGPoint(x: ScreenSize.width * CGFloat.random(0.1, max: 0.9), y: ScreenSize.height * CGFloat.random(0.1, max: 0.9))
        addChild(winnerCrate)
    }
    
    func removeAllCrates() {
        enumerateChildNodes(withName: "//*") { (node, stop) in
            if node.name == "crate" {
                node.removeFromParent()
            }
        }
    }
    
    func handleWinnerCrateTapped() {
        score += 1
        updateScoreLabel()
        startNewBoard()
    }
    
    func updateScoreLabel() {
        scoreLabel.text = "\(score)"
    }
    
    func handleWrongCrateTapped() {
        ACTPlayerStats.shared.setScore(score)
        Manager.shared.transition(self, toScene: .GameOver, transition: SKTransition.moveIn(with: .up, duration: 0.5))
        
    }
}




















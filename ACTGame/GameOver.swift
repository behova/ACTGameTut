//
//  GameOver.swift
//  ACTGame
//
//  Created by iMac on 4/25/18.
//  Copyright © 2018 HipsterTrikster. All rights reserved.
//

import SpriteKit

class GameOver: SKScene {
    
    var background: SKSpriteNode = {
        var sprite = SKSpriteNode(imageNamed: "ground_03")
        sprite.scaleTo(screenWidthPercentage: 1.0)
        sprite.scaleTo(screenHeightPercentage: 1.0)
        sprite.zPosition = 0
        
        return sprite
    }()
    
    var deadMan: SKSpriteNode = {
        var sprite = SKSpriteNode(imageNamed: "ret_74")
        //sprite.scaleTo(screenWidthPercentage: 0.75)
        //sprite.scaleTo(screenHeightPercentage: 0.75)
        sprite.zPosition = 0
        
        return sprite
    }()
    
    var title: SKLabelNode = {
        var label = SKLabelNode(fontNamed: "StockyRegular")
        label.fontSize = CGFloat.universalFont(size: 42)
        label.zPosition = 2
        label.color = SKColor.white
        label.horizontalAlignmentMode = .center
        label.verticalAlignmentMode = .center
        label.text = "Big Ol' Dead"
        
        return label
    }()
    
    var score: SKLabelNode = {
        var label = SKLabelNode(fontNamed: "StockyRegular")
        label.fontSize = CGFloat.universalFont(size: 22)
        label.zPosition = 2
        label.color = SKColor.white
        label.horizontalAlignmentMode = .center
        label.verticalAlignmentMode = .center
        label.text = "Score: 00"
        
        return label
    }()
    
    var bestScore: SKLabelNode = {
        var label = SKLabelNode(fontNamed: "StockyRegular")
        label.fontSize = CGFloat.universalFont(size: 22)
        label.zPosition = 2
        label.color = SKColor.white
        label.horizontalAlignmentMode = .center
        label.verticalAlignmentMode = .center
        label.text = "Best Score: 00"
        
        return label
    }()
    
    lazy var backButton: BDButton = {
        var button = BDButton(imageNamed: "blue_button02", title: "Go Back", buttonAction: {
            Manager.shared.transition(self, toScene: .MainMenu, transition: SKTransition.moveIn(with: .up, duration: 0.5))
        })
        button.scaleTo(ScreenWithPercentage: 0.22)
        button.zPosition = 1
        
        return button
    }()
    
    lazy var replayButton: BDButton = {
        var button = BDButton(imageNamed: "blue_button02", title: "replay", buttonAction: {
            Manager.shared.transition(self, toScene: .MainMenu, transition: SKTransition.moveIn(with: .up, duration: 0.5))
        })
        button.scaleTo(ScreenWithPercentage: 0.22)
        button.zPosition = 1
        
        return button
    }()
    
    override func didMove(to view: SKView) {
        print("Game Over Man")
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        setupNodes()
        addNodes()
    }
    
    func setupNodes() {
        background.position = CGPoint.zero
        deadMan.position = CGPoint.zero
        title.position = CGPoint(x: ScreenSize.width * 0.0, y: ScreenSize.height * 0.25)
        score.position = CGPoint(x: ScreenSize.width * 0.0, y: ScreenSize.height * 0.15)
        bestScore.position = CGPoint(x: ScreenSize.width * 0.0, y: ScreenSize.height * 0.10)
        replayButton.position = CGPoint(x: ScreenSize.width * 0.0, y: ScreenSize.height * -0.10)
        backButton.position = CGPoint(x: ScreenSize.width * 0.0, y: ScreenSize.height * -0.15)
    }
    
    func addNodes() {
        addChild(background)
        addChild(deadMan)
        addChild(title)
        addChild(score)
        addChild(bestScore)
        addChild(backButton)
        addChild(replayButton)
    }
}


















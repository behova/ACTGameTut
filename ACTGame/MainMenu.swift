//
//  MainMenu.swift
//  ACTGame
//
//  Created by iMac on 4/25/18.
//  Copyright © 2018 HipsterTrikster. All rights reserved.
//

import SpriteKit

class MainMenu: SKScene {
    
    var background: SKSpriteNode = {
        var sprite = SKSpriteNode(imageNamed: "ground_03")
        sprite.scaleTo(screenWidthPercentage: 1.0)
        sprite.scaleTo(screenHeightPercentage: 1.0)
        sprite.zPosition = 0
        
        return sprite
    }()
    
    lazy var playButton: BDButton = {
        var button = BDButton(imageNamed: "playerFace_dark", buttonAction: {
            Manager.shared.transition(self, toScene: .Gameplay, transition: SKTransition.moveIn(with: .down, duration: 0.5))
        })
        button.scaleTo(ScreenWithPercentage: 0.33)
        button.zPosition = 1
        
        return button
    }()
    
    var title: SKLabelNode = {
        var label = SKLabelNode(fontNamed: "StockyRegular")
        label.fontSize = CGFloat.universalFont(size: 42)
        label.zPosition = 2
        label.color = SKColor.white
        label.horizontalAlignmentMode = .center
        label.verticalAlignmentMode = .center
        label.text = "Big Ol' Crate"
        
        return label
    }()
    
    
    
    override func didMove(to view: SKView) {
        
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        setupNodes()
        addNodes()
    }
    
    func setupNodes() {
        background.position = CGPoint.zero
        playButton.position = CGPoint.zero
        title.position = CGPoint(x: ScreenSize.height * 0.0, y: ScreenSize.width * 0.25)
    }
    
    func addNodes() {
        addChild(background)
        addChild(title)
        addChild(playButton)
    }
    
}

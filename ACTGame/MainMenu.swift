//
//  MainMenu.swift
//  ACTGame
//
//  Created by iMac on 4/25/18.
//  Copyright © 2018 HipsterTrikster. All rights reserved.
//

import SpriteKit

class MainMenu: SKScene {
    
    lazy var playButton: BDButton = {
        var button = BDButton(imageNamed: "dealbutton", buttonAction: {
            Manager.shared.transition(self, toScene: .Gameplay, transition: SKTransition.moveIn(with: .down, duration: 0.5))
        })
        button.zPosition = 1
        return button
    }()
    
    
    override func didMove(to view: SKView) {
       setupNodes()
        addNodes()
    }
    
    func setupNodes() {
        
    }
    
    func addNodes() {
        
    }
    
}

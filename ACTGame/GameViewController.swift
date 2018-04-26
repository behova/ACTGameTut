//
//  GameViewController.swift
//  ACTGame
//
//  Created by iMac on 4/25/18.
//  Copyright © 2018 HipsterTrikster. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    let skView: SKView = {
        let view = SKView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(skView)
        
        skView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
        
        let scene = GameOver(size: CGSize(width: ScreenSize.width, height: ScreenSize.height))
        scene.scaleMode = .aspectFill
        
        skView.presentScene(scene)
        skView.ignoresSiblingOrder = true
        
        
    }
}

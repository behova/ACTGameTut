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
        
        let menu = MainMenu(size: CGSize(width: ScreenSize.width, height: ScreenSize.height))
        menu.scaleMode = .aspectFill
        
        skView.presentScene(menu)
        skView.ignoresSiblingOrder = true
        
        
    }
}

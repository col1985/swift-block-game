//
//  GameViewController.swift
//  Block-Game
//
//  Created by Colum on 25/09/2014.
//  Copyright (c) 2014 Colúm Bennett. All rights reserved.
//

import UIKit
import SpriteKit


class GameViewController: UIViewController {
    
    var scene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // config the view
        let skView = view as SKView
        skView.multipleTouchEnabled = false
        
        // create & config the scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        // present the scene
        skView.presentScene(scene)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}

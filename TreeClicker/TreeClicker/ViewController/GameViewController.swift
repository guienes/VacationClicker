//
//  GameViewController.swift
//  dsdsadsadasdsa
//
//  Created by Guilherme Enes on 09/01/20.
//  Copyright © 2020 Guilherme Enes. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
            super.viewDidLoad()
            
            if let view = self.view as! SKView? {
                // Load the SKScene from 'GameScene.sks'
                let scene = GameScene(size: view.bounds.size)
                    // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
    //
    //                // Present the scene
                view.presentScene(scene)


                view.ignoresSiblingOrder = true
                view.showsFPS = false
                view.showsNodeCount = false
            
      }
    }

    
}

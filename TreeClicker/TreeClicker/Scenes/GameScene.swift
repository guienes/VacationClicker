//
//  GameScene.swift
//  TreeClicker
//
//  Created by Guilherme Enes on 09/01/20.
//  Copyright © 2020 Guilherme Enes. All rights reserved.
//

import SpriteKit

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var score: Int = 0 {
        didSet {
            textCoins.text = "\(score)"
        }
    }
    var textCoins = SKLabelNode(fontNamed: "Helvetica")
    var backgroundScene = SKSpriteNode(imageNamed: "Scenario")
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        loadScene()
       
        }
    
    func loadScene(){
        
        textCoins.text = "0"
        textCoins.zPosition = 100
        textCoins.fontColor = .black
        textCoins.fontSize = 40
        textCoins.horizontalAlignmentMode = .center
        textCoins.verticalAlignmentMode = .center
        textCoins.position = CGPoint(x: frame.size.width/1.99, y: frame.size.height/1.46)
        addChild(textCoins)
        
        backgroundScene.size = CGSize(width: frame.size.width, height: frame.size.height)
        backgroundScene.position = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
        addChild(backgroundScene)
        
    }
    
      override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        score+=1
      
    }
    
    
        
//        // Create shape node to use during mouse interaction
//        let w = (self.size.width + self.size.height) * 0.05
//        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
//
//        if let spinnyNode = self.spinnyNode {
//            spinnyNode.lineWidth = 2.5
//
//            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
//            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
//                                              SKAction.fadeOut(withDuration: 0.5),
//                                              SKAction.removeFromParent()]))
//        }
//    }
//
//
//    func touchDown(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.green
//            self.addChild(n)
//        }
//    }
//
//    func touchMoved(toPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.blue
//            self.addChild(n)
//        }
//    }
//
//    func touchUp(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.red
//            self.addChild(n)
//        }
//    }
//
//
//        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
//    }
//
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
//    }
//
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
//    }
//
//    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
//    }
//
//
//    override func update(_ currentTime: TimeInterval) {
//        // Called before each frame is rendered
//    }
}

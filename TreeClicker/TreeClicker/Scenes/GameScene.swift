//
//  GameScene.swift
//  TreeClicker
//
//  Created by Guilherme Enes on 09/01/20.
//  Copyright © 2020 Guilherme Enes. All rights reserved.
//

import SpriteKit
import GameplayKit
import CoreData

class GameScene: SKScene {
    var score: Int = 0
    var textCoins = SKLabelNode(fontNamed: "Helvetica")
    let backgroundScene = SKSpriteNode(imageNamed: "Scenario")
    let coinMoney = SKSpriteNode(imageNamed: "CoinMoney")
    let upgradeIcon = SKSpriteNode(imageNamed: "UpgradeIcon")
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    /**
     Chama a função loadScene() para que todos os SKSpriteNodes sejam inicializados.
     */
    override func didMove(to view: SKView) {
        loadScene()
        }
    
    /**
    Carrega todos os SKSpriteNodes na tela, em seus respectivos lugares (cria a cena).
    */
    func loadScene(){
        
        textCoins.text = "\(score)"
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
        
        coinMoney.zPosition = 101
        coinMoney.position = CGPoint(x: frame.size.width/1.58 , y: frame.size.height/1.46)
        addChild(coinMoney)
        
        upgradeIcon.name = "upgradeIcon"
        upgradeIcon.zPosition = 105
        upgradeIcon.position = CGPoint(x: frame.size.width/1.05 , y: frame.size.height/1.80)
        addChild(upgradeIcon)
        
    }
    
    /**
     Reconhece quando houve um toque no SKSpriteNode de "upgradeIcon" e realiza uma ação.
     
     Se houver um toque, ele irá abrir uma tela de upgrades (em produção).
     Caso contrário, irá solicitar a classe CoinDealer para lidar com a ação.
     
     CoinDealer().coinReceiver(x: &self.score)
     
     Parâmetros:
     x : recebe o score, que é inicializado como "0" no começo do aplicativo. (não pode ser nil).
     
     Retorna:
     um resultado para a variável coins, que é armazenada em score e assim mostrada em tela.
     
     */
      override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
            if upgradeIcon.contains(touchLocation) {
                // Abre tela de upgrades
        }
            else{
                var coins = CoinDealer().coinReceiver(x: &self.score)
                score = coins
                textCoins.text = "\(score)"
        }
      
    }
    
    
        
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

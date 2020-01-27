//
//  upgradeDealer.swift
//  TreeClicker
//
//  Created by Guilherme Enes on 17/01/20.
//  Copyright © 2020 Guilherme Enes. All rights reserved.
//

import Foundation
import SpriteKit

class Upgrades: GameScene{
    
    var upgradeBackground = SKSpriteNode(imageNamed: "UpgradesBackground")
    
    var fingerUpgrade = SKSpriteNode(imageNamed: "Upgrade1")
    
    // seta os valores do finger boost.
    
    var fingerBoost = SKLabelNode(fontNamed: "Helvetica")
    
    var fingerCoins = SKLabelNode(fontNamed: "Helvetica")
    
    var fingerBuy = SKLabelNode(fontNamed: "Helvetica")
    
    var fingerBoostValue:Int = 1
    var fingerPriceValue: Int = 10
    
    var counterUpgrades = 0
    
    
    lazy var arraySKNodes:[SKSpriteNode] = [upgradeBackground,fingerUpgrade]
    

    
    func receiveUpgradeCounter() {
        counterUpgrades += 1
    }
    


    func upgradeScreenAppear () -> ([SKSpriteNode]){
        
//        upgradeBackground.position = CGPoint(x: 210, y: 460)
        upgradeBackground.zPosition = 100000
        
//        fingerUpgrade.position = CGPoint(x: 215, y: 530)
        fingerUpgrade.zPosition = 1000000
        
        return arraySKNodes
    }

    func upgradeValues (upgradesPurchased: Int) -> ([SKLabelNode]) {
        
        if counterUpgrades >= 1{
            fingerPriceValue += 100
            fingerCoins.text = String(fingerPriceValue)
//            fingerBoost.text = String(fingerBoostValue)
            
            fingerBoost.fontSize = 12
//            fingerBoost.position = CGPoint(x: 140, y: 518)
            fingerBoost.zPosition = 10000000000
            
            fingerCoins.fontSize = 14
//            fingerCoins.position = CGPoint(x: 305, y: 536)
            fingerCoins.zPosition = 100000000
            
            fingerBuy.text = "Comprar"
            fingerBuy.fontSize = 12
            fingerBuy.fontColor = .red
            fingerBuy.zPosition = 1000000000000000
//            fingerBuy.position = CGPoint(x: 315, y: 515)

            var arrayPricesSKLabelNode: [SKLabelNode] = [fingerBoost,fingerCoins,fingerBuy]
            return arrayPricesSKLabelNode
        }
        else {
             fingerCoins.text = String(fingerPriceValue)
            fingerBoost.text = String(fingerBoostValue)
            
            fingerBoost.fontSize = 12
            fingerBoost.position = CGPoint(x: 140, y: 518)
            fingerBoost.zPosition = 10000000000
            
            fingerCoins.fontSize = 14
            fingerCoins.position = CGPoint(x: 305, y: 536)
            fingerCoins.zPosition = 100000000
            
            fingerBuy.text = "Comprar"
            fingerBuy.fontSize = 12
            fingerBuy.fontColor = .red
            fingerBuy.zPosition = 1000000000000000
            fingerBuy.position = CGPoint(x: 315, y: 515)

            var arrayPricesSKLabelNode: [SKLabelNode] = [fingerBoost,fingerCoins,fingerBuy]
            return arrayPricesSKLabelNode
        }
//            else
//            fingerCoins.text = String(fingerPriceValue)
        
        // seta o quanto o upgrade gera a mais no click.
        
    }
    
//     func upgradePriceChange(){
//        fingerPriceValue = 200
//        var aa = fingerPriceValue
//        fingerCoins.text = String(fingerPriceValue)
//    }
}

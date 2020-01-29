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
    
    var farmerUpgrade = SKSpriteNode(imageNamed: "Upgrade2")
    // seta os valores do finger boost.
    
    var fingerBoost = SKLabelNode(fontNamed: "Helvetica")
    var fingerCoins = SKLabelNode(fontNamed:
        "Helvetica")
    var farmerBoost = SKLabelNode(fontNamed: "Helvetica")
    var farmerCoins = SKLabelNode(fontNamed: "Helvetica")
    
    var farmerBuy = SKLabelNode(fontNamed: "Helvetica")
    var fingerBuy = SKLabelNode(fontNamed: "Helvetica")
    
    var fingerBoostValue:Int = 1
    var fingerPriceValue: Int = 10
    
    var farmerBoostValue: Int = 1
    var farmerPriceValue: Int = 500
    
    var counterUpgrades = 0
    var counterUpgradesFarmer = 0
    
    
    lazy var arraySKNodes:[SKSpriteNode] = [upgradeBackground,fingerUpgrade,farmerUpgrade]
    

    
    func receiveUpgradeCounter() {
        counterUpgrades += 1
    }
    


    func upgradeScreenAppear () -> ([SKSpriteNode]){
        
//        upgradeBackground.position = CGPoint(x: 210, y: 460)
        upgradeBackground.zPosition = 100000
        
//        fingerUpgrade.position = CGPoint(x: 215, y: 530)
        fingerUpgrade.zPosition = 1000000
        
        farmerUpgrade.zPosition = 1000000
        
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
            fingerBuy.fontColor = .black
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
    }
    
    func upgradeValuesFarmer (upgradesPurchased: Int) -> ([SKLabelNode]) {
            
            if counterUpgradesFarmer >= 1{
                farmerPriceValue += 100
                farmerCoins.text = String(farmerPriceValue)
    //            fingerBoost.text = String(fingerBoostValue)
                
                farmerBoost.fontSize = 12
    //            fingerBoost.position = CGPoint(x: 140, y: 518)
                farmerBoost.zPosition = 10000000000
                
                farmerCoins.fontSize = 14
    //            fingerCoins.position = CGPoint(x: 305, y: 536)
                farmerCoins.zPosition = 100000000
                
                farmerBuy.text = "Comprar"
                farmerBuy.fontSize = 12
                farmerBuy.fontColor = .black
                farmerBuy.zPosition = 1000000000000000
    //            fingerBuy.position = CGPoint(x: 315, y: 515)

                var arrayPricesFarmerSKLabelNode: [SKLabelNode] = [farmerBoost,farmerCoins,farmerBuy]
                return arrayPricesFarmerSKLabelNode
            }
            else {
                 farmerCoins.text = String(farmerPriceValue)
                farmerBoost.text = String(farmerBoostValue)
                
                farmerBoost.fontSize = 12
                farmerBoost.position = CGPoint(x: 140, y: 518)
                farmerBoost.zPosition = 10000000000
                
                farmerCoins.fontSize = 14
                farmerCoins.position = CGPoint(x: 305, y: 536)
                farmerCoins.zPosition = 100000000
                
                farmerBuy.text = "Comprar"
                farmerBuy.fontSize = 12
                farmerBuy.fontColor = .red
                farmerBuy.zPosition = 1000000000000000
                farmerBuy.position = CGPoint(x: 315, y: 515)

                var arrayPricesFarmerSKLabelNode: [SKLabelNode] = [farmerBoost,farmerCoins,farmerBuy]
                return arrayPricesFarmerSKLabelNode
            }
        }
}

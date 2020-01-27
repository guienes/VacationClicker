//
//  CoinDealer.swift
//  TreeClicker
//
//  Created by Guilherme Enes on 11/01/20.
//  Copyright © 2020 Guilherme Enes. All rights reserved.
//

import Foundation
import SpriteKit

class CoinDealer: SKSpriteNode{
    /**
     Irá se integrar com o sistema de upgrades.
     */
    func coinReceiver (score: inout Int,purchases: Int, upgradesBought: Int) -> Int {
        
        if upgradesBought >= 1{
            var soma = score + purchases
            return soma
        }
        
        var soma = score + 1
        return soma
    }
    
    func buyUpgrades(valor: inout Int, compra: Int) -> Int{
        if valor >= compra{
            var upgradeSum = Upgrades().receiveUpgradeCounter()
            valor = valor - compra
            print("Tem dinheiro!")
            return valor
        }
     return valor
    }
    
    
    func attUpgradePrice(){
        
    }
    
}

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
    func coinReceiver (x: inout Int) -> Int {
        var soma = x + 1
        return soma
    }
    
}

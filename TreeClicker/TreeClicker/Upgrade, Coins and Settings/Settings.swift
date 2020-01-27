//
//  Settings.swift
//  TreeClicker
//
//  Created by Guilherme Enes on 27/01/20.
//  Copyright © 2020 Guilherme Enes. All rights reserved.
//

import Foundation
import SpriteKit

class Settings: SKNode{
    
    var settingsBackground = SKSpriteNode(imageNamed: "SettingsBackground")
    var soundOnIcon = SKSpriteNode(imageNamed: "SoundOn")
    var soundOffIcon = SKSpriteNode(imageNamed: "SoundOff")
    
    func settingsScreenAppear() -> [SKSpriteNode]{
        settingsBackground.zPosition = 1000000000000
        soundOnIcon.zPosition = 10000000000000
        soundOffIcon.zPosition = 10000000000000
        
        var arraySettingsSKSPriteNode: [SKSpriteNode] = [settingsBackground,soundOnIcon, soundOffIcon]
        return arraySettingsSKSPriteNode
    }

}

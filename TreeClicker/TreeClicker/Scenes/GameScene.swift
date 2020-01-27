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
//    var gameTableView = UpgradesTableView()
    var score: Int = 0
    var textCoins = SKLabelNode(fontNamed: "Helvetica")
    let backgroundScene = SKSpriteNode(imageNamed: "Scenario")
    let coinMoney = SKSpriteNode(imageNamed: "CoinMoney")
    let upgradeIcon = SKSpriteNode(imageNamed: "UpgradeIcon")
    let engrenagemIcon = SKSpriteNode(imageNamed: "Engrenagem")
    var soonSKLabel = SKLabelNode(text: "Em breve!")
    
    var cheecker = 0
    
    lazy var sumPrice = Upgrades().fingerPriceValue
    
    //Evita dar crash
    var upgradeScreenOn = 0
    var SoundBool = false
    
    
    
    // cria a tela de upgrades em si
    lazy var upgradeTela: [SKSpriteNode] = Upgrades().upgradeScreenAppear()
    
    // cria a tela de settings
    lazy var settingsTela: [SKSpriteNode] = Settings().settingsScreenAppear()
    
    // pega os valores dos produtos da loja de upgrades
    lazy var upgradeValues: [SKLabelNode] = Upgrades().upgradeValues(upgradesPurchased: numberUpgradesFinger)
    
    //seta o numero de upgrades que foram comprados
    var numberUpgradesFinger:Int = 0
    lazy var boostValueFinger = Upgrades().fingerBoostValue
    var checker: Bool = false
    
    //musica do jogo
    let backgroundMusic = SKAudioNode(fileNamed: "MusicGame.mp3")
    
    /**
     Chama a função loadScene() para que todos os SKSpriteNodes sejam inicializados.
     */
    override func didMove(to view: SKView) {
//        gameTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        gameTableView.frame=CGRect(x:50,y:300,width:280,height:200)
//        self.scene?.view?.addSubview(gameTableView)
//        self.gameTableView.estimatedRowHeight = 20
//        gameTableView.reloadData()
        self.addChild(backgroundMusic)
        loadScene()
    
        }
    
    /**
    Carrega todos os SKSpriteNodes na tela, em seus respectivos lugares (cria a cena).
    */
    func loadScene(){
        
        soonSKLabel.zPosition = 107
        soonSKLabel.fontName = "Helvetica"
        soonSKLabel.fontColor = .black
        soonSKLabel.fontSize = 12
        soonSKLabel.horizontalAlignmentMode = .center
        soonSKLabel.verticalAlignmentMode = .center
        soonSKLabel.position = CGPoint(x: frame.size.width/1.08, y: frame.size.height/2.23)
        addChild(soonSKLabel)
        
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
        
        engrenagemIcon.zPosition = 106
        engrenagemIcon.position = CGPoint(x: frame.size.width/1.05, y: frame.size.height/2.08)
        addChild(engrenagemIcon)
        
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

        //cicou no icone de upgrades
        if upgradeIcon.contains(touchLocation) {
            checker = true
            
            if upgradeScreenOn == 1{
                // Serve para evitar crash ao adicionar SKNodes onde já existem.
            }
            else{
                upgradeScreenOn += 1
                // posiciona na tela
                upgradeTela[0].position = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
                
                upgradeTela[1].position = CGPoint(x: frame.size.width/2, y: frame.size.height/1.71)
                
                for i in 0 ..< upgradeTela.count{
                    // Apresenta tela de upgrades
                    addChild(upgradeTela[i])
                }
                
                upgradeValues[0].position = CGPoint(x: frame.size.width/3.1, y: frame.size.height/1.75)
                
                upgradeValues[1].position = CGPoint(x: frame.size.width/1.37, y: frame.size.height/1.69)
                
                upgradeValues[2].position = CGPoint(x: frame.size.width/1.33, y: frame.size.height/1.76)
                
                for i in 0 ..< upgradeValues.count{
                    addChild(upgradeValues[i])
                }
            }
        }
        
        /**
        Reconhece quando houve um toque no SKSpriteNode de "engrenagemIcon" e realiza uma ação.
        
        Se houver um toque, ele irá abrir uma tela de settings.
         
        Se o usuario clicar para mutar a musica, a classe Settings() é acionada, responsavel por gerar toda a tela de Settings.
        
        Retorna:
        Um array de SKSpriteNodes, que serao mostrados na tela do usuario.
        
        */
        
        // Se a engranegem for selecionada (Settings)
//        if engrenagemIcon.contains(touchLocation){
//            if upgradeScreenOn == 1 {
//                // faz nada (evita crash)
//            } else {
//                upgradeScreenOn += 1
//                checker = true
//                settingsTela[0].position = CGPoint(x: frame.size.width/2, y: frame.size.height/1.8)
//                addChild(settingsTela[0])
//                if SoundBool == false{
//                    settingsTela[2].position = CGPoint(x: frame.size.width/1.95, y: frame.size.height/1.85)
//                    addChild(settingsTela[2])
//                }
//            }
//        }
//
//        if settingsTela[2].contains(touchLocation){
//            backgroundMusic.run(SKAction.stop())
//        }
//
//        // remove a tela de settings
//        if checker == true && textCoins.contains(touchLocation){
//            settingsTela[0].removeFromParent()
//            settingsTela[2].removeFromParent()
//            upgradeScreenOn = 0
//
//        }
        
        
        
        
        
        
        
        /**
        Reconhece quando houve um toque no SKSpriteNode de compra.
        
        Irá converter o valor do upgrade de String para Int.
        É chamada a função buyUpgrades da classe CoinDealer().
        
        CoinDealer().coinReceiver(x: &self.score)
        
        Parâmetros:
        valor: Recebe o valora atual de pontos que você têm.
        compra: Recebe o valor que custa o upgrade.
        
        Retorna:
        Caso seja possivel a compra, retorna para score o valor - o custo do upgrade.
        
        */
        
        //Quando você tenta comprar um upgrade
        if (upgradeValues.last?.contains(touchLocation))!{
            
            // Converte o valor de string pra Inteiro
            var priceConverterFinger = Int((upgradeValues[1].text ?? nil)!)
            
            // Checa se você tem dinheiro suficiente pra comprar o upgrade.
            var actualScore = score
            var upgradeChecker = CoinDealer().buyUpgrades(valor: &actualScore, compra: priceConverterFinger ?? 0)
            
             // Checa se o resultado devolvido para upgradeChecker bate com o score, se bater é por que a compra não foi efetuada.
            if score >= priceConverterFinger ?? 0{
//                cheecker += 1
                score = upgradeChecker
                textCoins.text = "\(score)"
                sumPrice = sumPrice + 100
                upgradeValues[1].text = String(sumPrice)
                
                boostValueFinger += 2
                upgradeValues[0].text = String(boostValueFinger)
                cheecker += 1
            } else {
                ""
            }
            
            // EDITAR DAQUI PRA BAIXO PRA ARRUMAR MUDAR O VALOR NA HORA DA COMPRA!
            
            //Mostra quantos upgrades foram comprados
            
//            cheecker = Upgrades().receiveUpgradeCounter()
            
            
//            score = upgradeChecker
//            textCoins.text = "\(score)"
            
            //se ja foram comprados 1 ou mais upgrades..
            if cheecker >= 1{
                
                // Aumenta o valor do preço do upgrade
                
                
                
            }
//            var teste =
            
            
            // ===================================================================
        }
        
        //remove a tela de upgrades!
        
        if checker == true && textCoins.contains(touchLocation){
            upgradeScreenOn = 0
            for i in 0 ..< 2{
                upgradeTela[i].removeFromParent()
            }
            
            for i in 0 ..< upgradeValues.count{
                upgradeValues[i].removeFromParent()
            }
            checker = false
        }
            
            
        else{
            if checker == true{
                //nao permite que conte clicks fora durante compras de upgrade.
            }
            else{
                var coins = CoinDealer().coinReceiver(score: &score, purchases: boostValueFinger, upgradesBought: cheecker )
                score = coins
                textCoins.text = "\(score)"
            }
        }
      
    }
}

//
//  GameOverScene.swift
//  Space Battle
//
//  Created by Ulad Daratsiuk-Demchuk on 2018-01-01.
//  Copyright © 2018 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit
import SpriteKit

class GameOverScene: SKScene {
    
    var score: Int = 0
    
    var scoreLabel: SKLabelNode!
    var newGameButtonNode: SKSpriteNode!
    
    
    override func didMove(to view: SKView) {
        scoreLabel = self.childNode(withName: "scoreLabel") as! SKLabelNode
        scoreLabel.text = "\(score)"
        
        newGameButtonNode = self.childNode(withName: "newGameButton") as! SKSpriteNode
        newGameButtonNode.texture = SKTexture(imageNamed: "newGame")
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let location = touch?.location(in: self){
            let node = self.nodes(at: location)
            
            if node[0].name == "newGameButton" {
                let transition = SKTransition.flipHorizontal(withDuration: 0.5)
                let gameScene = GameScene(size: self.size)
                self.view?.presentScene(gameScene, transition: transition)
            }
        }
    }

}

//
//  GameScene.swift
//  Space War
//
//  Created by Женя on 05.05.2021.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var spaceShip: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        //background node
        let spaceBackground = SKSpriteNode(imageNamed: "spaceBackground")
        spaceBackground.size = self.frame.size
        spaceBackground.zPosition = -1
        addChild(spaceBackground)
        
        //ship node
        spaceShip = SKSpriteNode(imageNamed: "spaceShip")
        addChild(spaceShip)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchLocation = touch.location(in: self)
            print(touchLocation)
            
            let moveAction = SKAction.move(to: touchLocation, duration: 1)
            spaceShip.run(moveAction)
        }
    }
}

//
//  GameScene.swift
//  testingArrayforFI2
//
//  Created by Kai Drayton-Yee on 7/21/16.
//  Copyright (c) 2016 Kai Drayton-Yee. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!"
        myLabel.fontSize = 45
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))

/////////////////
		////////////////////////////
		
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
			
			var infoForLevels = [[[0, 60, 0, 0, 1], [0, 4, 0, 0, 1]], [[0, 7, 0, 0, 1], [0, 6, 0, 0, 1], [0, 5, 0, 0, 1]]]
			//infoForLevels Example has three two levels, the first having two rings, and the second having three. Each ring has their defined properties
			var arrayOfCircleImages = ["blackRingSetOne", "blackRingSetTwo", "blackRingSetThree", "blackRingSetFour", "blackRingSetFive"]
			
			print("infoForLevels = [[[0, 60, 0, 0, 1], [0, 4, 0, 0, 1]], [[0, 7, 0, 0, 1], [0, 6, 0, 0, 1], [0, 5, 0, 0, 1]]]")
			print("arrayOfCircleImages = ['blackRingSetOne', 'blackRingSetTwo', 'blackRingSetThree', 'blackRingSetFour', 'blackRingSetFive']")
			print("writing infoForLevels[0].count gets me \(infoForLevels[0].count)")
			print("writing infoForLevels[0] gets me \(infoForLevels[0])")
			print("writing infoForLevels[0] gets me \(infoForLevels[0])")
			print("writing arrayOfCircleImages[0] gets me \(arrayOfCircleImages[0])")
			print("writing infoForLevels[0][0][1] gets me \(infoForLevels[0][0][1])")
			
			
			
		
			
			
			
			
	/////////////////////////////
		
/////////////////////////////////
			
        }
    }
	
/////////////////////////////
	
/////////////////////////////////
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}

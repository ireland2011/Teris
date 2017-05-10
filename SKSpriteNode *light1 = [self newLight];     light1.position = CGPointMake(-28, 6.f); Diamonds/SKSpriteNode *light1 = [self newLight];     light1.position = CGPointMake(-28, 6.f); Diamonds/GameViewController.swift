//
//  GameViewController.swift
//  SKSpriteNode *light1 = [self newLight];     light1.position = CGPointMake(-28, 6.f); Diamonds
//
//  Created by Genius on 9/5/2017.
//  Copyright © 2017 Genius. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    var scene: GameScene!
    var swiftris: Swiftris!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as! SKView
        skView.isMultipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFill
        
        scene.tick = didTick
        
        swiftris = Swiftris()
        swiftris.beginGame()
        
        skView.presentScene(scene)
        
        
        scene.addPreviewShapeToScene(shape: swiftris.nextShape!) {
            
            self.swiftris.nextShape?.moveTo(column: StartingColumn, row: StartingRow)
            self.scene.movePreviewShape(shape: self.swiftris.nextShape!, completion: { 
                let nextShapes = self.swiftris.newShape()
                self.scene.startTicking()
                self.scene.addPreviewShapeToScene(shape: nextShapes.nextShape!, completion: {})
            })
        }
        
        
    }



    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func didTick() {
        
        swiftris.fallingShape?.lowerShapeByOneRow()
        scene.redrawShape(shape: swiftris.fallingShape!, completion: {})
    }
    
    
}




















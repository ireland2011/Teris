
//
//  SquareShape.swift
//  SKSpriteNode *light1 = [self newLight];     light1.position = CGPointMake(-28, 6.f); Diamonds
//
//  Created by Genius on 10/5/2017.
//  Copyright © 2017 Genius. All rights reserved.
//

class SquareShape: Shape {
    
    /*
            | 0 | 1 |
     
            | 2 | 3 |
     
     */
    
    
    override var blockRowColumnPositions: [Orientation : Array<(colunmDiff: Int, rowDiff: Int)>] {
        return [
                Orientation.Zero: [(0, 0), (1, 0), (0, 1), (1, 1)],
                Orientation.OneEighty: [(0, 0), (1, 0), (0, 1), (1, 1)],
                Orientation.Ninety: [(0, 0), (1, 0), (0, 1), (1, 1)],
                Orientation.TwoSeventy: [(0, 0), (1, 0), (0, 1), (1, 1)]
             ]
    }
    
    
    override var bottomBlocksForOrientations: [Orientation : Array<Block>] {
        return [
                Orientation.Zero: [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
                Orientation.Ninety: [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
                Orientation.OneEighty: [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
                Orientation.TwoSeventy: [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]]
            ]
    }
    
 
    
}

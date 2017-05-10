//
//  LineShape.swift
//  SKSpriteNode *light1 = [self newLight];     light1.position = CGPointMake(-28, 6.f); Diamonds
//
//  Created by Genius on 10/5/2017.
//  Copyright © 2017 Genius. All rights reserved.
//

class LineShape: Shape {
    
    
    override var blockRowColumnPositions: [Orientation : Array<(colunmDiff: Int, rowDiff: Int)>] {
        return [
                Orientation.Zero: [(0, 0), (0, 1), (0, 2), (0, 3)],
                Orientation.Ninety:     [(-1,0), (0, 0), (1, 0), (2, 0)],
                Orientation.OneEighty:  [(0, 0), (0, 1), (0, 2), (0, 3)],
                Orientation.TwoSeventy: [(-1,0), (0, 0), (1, 0), (2, 0)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation : Array<Block>] {
        return [
                Orientation.Zero:       [blocks[FourthBlockIdx]],
                Orientation.Ninety:     blocks,
                Orientation.OneEighty:  [blocks[FourthBlockIdx]],
                Orientation.TwoSeventy: blocks
        ]
    }
    
}

//
//  Swiftris.swift
//  SKSpriteNode *light1 = [self newLight];     light1.position = CGPointMake(-28, 6.f); Diamonds
//
//  Created by Genius on 10/5/2017.
//  Copyright © 2017 Genius. All rights reserved.
//

let NumColumns = 10
let NumRows = 20

let StartingColumn = 4
let StartingRow = 0

let PreviewColumn = 12
let PreviewRow = 1

class Swiftris {
    
    var blockArray: Array2D<Block>
    
    var nextShape: Shape?
    
    var fallingShape: Shape?
    
    init() {
        
        fallingShape = nil
        nextShape = nil
        blockArray = Array2D<Block>(columns: NumColumns, rows: NumRows)
        
    }
    
    func beginGame() {
        
        if nextShape == nil {
            nextShape = Shape.random(startingColumn: PreviewColumn, startingRow: PreviewRow)
        }
    }
    
    
    func newShape() -> (fallingShape: Shape?, nextShape: Shape?) {
        
        fallingShape = nextShape
        nextShape = Shape.random(startingColumn: PreviewColumn, startingRow: PreviewRow)
        fallingShape?.moveTo(column: StartingColumn, row: StartingRow)
        
        return (fallingShape, nextShape)
    }
    
    
    
    
    
    
}





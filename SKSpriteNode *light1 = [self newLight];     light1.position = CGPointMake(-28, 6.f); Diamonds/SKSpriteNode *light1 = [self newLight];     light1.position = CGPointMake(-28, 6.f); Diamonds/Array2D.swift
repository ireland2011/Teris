//
//  Array2D.swift
//  SKSpriteNode *light1 = [self newLight];     light1.position = CGPointMake(-28, 6.f); Diamonds
//
//  Created by Genius on 9/5/2017.
//  Copyright © 2017 Genius. All rights reserved.
//

class Array2D<T> {
    
    var columns: Int
    var rows: Int
    
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(repeating: nil, count: rows * columns)
    }
    
    subscript(column: Int, row: Int) -> T? {
        
        get {
            return array[(row * columns) + column]
        }
        
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
    
    
    
}

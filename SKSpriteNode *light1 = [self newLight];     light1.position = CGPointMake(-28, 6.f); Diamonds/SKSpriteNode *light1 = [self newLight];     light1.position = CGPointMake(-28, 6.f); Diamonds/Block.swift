//
//  Block.swift
//  SKSpriteNode *light1 = [self newLight];     light1.position = CGPointMake(-28, 6.f); Diamonds
//
//  Created by Genius on 9/5/2017.
//  Copyright © 2017 Genius. All rights reserved.
//

import SpriteKit

let NumberOfColors: UInt32 = 6

enum BlockColor: Int, CustomStringConvertible {
    
    case Blue = 0, Orange, Purple, Red, Teal, Yellow
    
    var spriteName: String {
        switch self {
        case .Blue:
            return "blue"
        case .Orange:
            return "orange"
        case .Purple:
            return "purple"
        case .Red:
            return "red"
        case .Teal:
            return "teal"
        case .Yellow:
            return "yellow"
        }
    }
    
    var description: String {
        return self.spriteName
    }
    
    static func random() -> BlockColor {
        return BlockColor(rawValue: Int(arc4random_uniform(NumberOfColors)))!
    }
    
}


class Block: Hashable, CustomStringConvertible, Equatable {
    
    let color: BlockColor
    
    var colunm: Int
    var row: Int
    var sprite: SKSpriteNode?
    
    var spriteName: String {
        return color.spriteName
    }
    
    var hashValue: Int {
        return self.colunm ^ self.row
    }
    
    var description: String {
        return "\(color): [\(colunm), \(row)]"
    }
    
    init(column: Int, row: Int, color: BlockColor) {
        self.colunm = column
        self.row = row
        self.color = color
    }
    
    static func ==(lhs: Block, rhs: Block) -> Bool {
        return lhs.colunm == rhs.colunm && lhs.row == rhs.row && lhs.color.rawValue == rhs.color.rawValue
    }

    
}















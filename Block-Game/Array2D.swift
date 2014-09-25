//
//  Array2D.swift
//  Block-Game
//
//  Created by Colum on 25/09/2014.
//  Copyright (c) 2014 Colúm Bennett. All rights reserved.
//

import Foundation

//#1
class Array2D<T> {
    let columns: Int
    let rows: Int

    //#2
    var array: Array<T?>
    
    //#3
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(count: rows * columns, repeatedValue: nil)
    }
    
    //#4
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(rows * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}
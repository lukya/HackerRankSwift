//
//  7-Staircase.swift
//  HackerRankPlayground
//
//  Created by Swapnil Luktuke on 8/5/16.
//  Copyright © 2016 lukya. All rights reserved.
//

import Foundation

func staircase () {
    /// take count from use input
    let n = Int(readLine()!)!
    
    var output = ""
    
    for i in 1 ... n {
        output = ""
        /// add spaces
        for _ in 0 ..< (n-i) {
            output += " "
        }
        /// add #s
        for _ in 1 ... i {
            output += "#"
        }
        /// print the line
        print (output)
    }
    
}
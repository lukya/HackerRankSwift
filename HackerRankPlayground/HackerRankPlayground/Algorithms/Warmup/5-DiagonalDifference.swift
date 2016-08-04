//
//  5-DiagonalDifference.swift
//  HackerRankPlayground
//
//  Created by Swapnil Luktuke on 8/5/16.
//  Copyright © 2016 lukya. All rights reserved.
//

import Foundation

func diagonalDifference () {
    // read the integer n
    let n = Int(readLine()!)!
    
    // declare 2d array
    var arr : [[Int]] = []
    
    // read array row-by-row
    for _ in 0 ..< n {
        arr.append(readLine()!.characters.split(" ").map{Int(String($0))!})
    }
    
    /// initialize difference value to 0
    var difference = 0
    
    /// add up diagonal elements
    for i in 0 ..< n {
        difference += arr[i][i]
        difference -= arr[(n-1)-i][i]
    }

    /// print the absolute different
    print(abs(difference))
}



//
//  3-MatchingSets.swift
//  HackerRankPlayground
//
//  Created by Swapnil Luktuke on 8/10/16.
//  Copyright © 2016 lukya. All rights reserved.
//

import Foundation


func matchingSets () {
    /// take set count as user input
    let count = Int(readLine()!)!
    
    /// take first set
    var setA = readLine()!.characters.split(" ").map{Int64(String($0))!}
    /// take first set
    var setB = readLine()!.characters.split(" ").map{Int64(String($0))!}
    
    /// sort both the arrays
    setA.sortInPlace()
    setB.sortInPlace()
    
    /// set result value to -1 by default
    var result : Int64 = -1
    /// initialize a variable for iteration
    var i = 0
    /// variable for calcluating the difference between numbers at same index in two sets
    var difference : Int64 = 0
    var operations : Int64  = 0
    
    /// if the sum of elements in both sets is not equal they can never be converted into equal sets
    if setA.reduce(0, combine: +) == setB.reduce(0, combine: +) {
        
        /// check corresponding elements in both arrays
        while i < count {
            difference += abs(setA[i] - setB[i])
            
            /// only the decrements count as operations
            /// as increments are adjustedby previous decrements
            if setA[i] > setB[i] {
                operations += setA[i] - setB[i]
            }
            i += 1
        }
    }
    
    /// if the iteration variable is less than count
    /// above 'while' loop either did not execute
    /// or did not reach the last element
    /// hence making sets equal is not possible
    if i == count {
        result = operations
    }
    
    /// print the result
    print(result)
}


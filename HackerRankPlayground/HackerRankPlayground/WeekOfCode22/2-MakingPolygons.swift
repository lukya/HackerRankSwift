//
//  2-MakingPolygons.swift
//  HackerRankPlayground
//
//  Created by Swapnil Luktuke on 8/9/16.
//  Copyright © 2016 lukya. All rights reserved.
//

import Foundation


func makingPolygons () {
    /// take number of sticks as user input
    let n = Int(readLine()!)!
    /// take length of all sticks
    var sides = readLine()!.characters.split(" ").map{Float(String($0))!}

    /// sort the lengths array
    sides.sortInPlace()
    
    var cuts = 0
    
    /// for a single stick, two cuts will always result in atriangel
    if 1 == n {
        cuts = 2
    }
    /// for two sticks,
    /// if both sticks are of the same length, we need 2 cuts
    /// otherwise just one cut
    else if 2 == n {
        if (sides[0] == sides[1]) {
            cuts = 2
        }
        else {
            cuts = 1
        }
    }
    else {
        let totalLength : Float = sides.reduce(0, combine: +)
        let largestSide = sides.last!
        
        /// for more than two sticks,
        /// a polygon is not formed only if the largest stick is longer than all other sticks put together
        /// also, a single cut (in half) in largest stick always breaks the above mentioned point maning only one cut is necessary
        if largestSide >= (totalLength - largestSide) {
            cuts = 1
        }
    }
    /// print the number of cuts
    print(cuts)
}


//
//  6-PlusMinus.swift
//  HackerRankPlayground
//
//  Created by Swapnil Luktuke on 8/5/16.
//  Copyright © 2016 lukya. All rights reserved.
//

import Foundation

func plusMinus () {
    /// get number of elements
    let n = Int(readLine()!)!
    
    /// read array and map the elements to integer
    let arr = readLine()!.characters.split(" ").map{Int(String($0))!}

    /// initialize counts to 0
    var positives : Int = 0
    var negatives : Int = 0
    var zeroes : Int = 0
    
    /// loop through and update the counts
    for i in 0 ..< n {
        if arr[i] > 0 {
            positives += 1
        }
        else if arr[i] < 0 {
            negatives += 1
        }
        else {
            zeroes += 1
        }
    }
    
    /// print the fractions
    print(Double(positives)/Double(n))
    print(Double(negatives)/Double(n))
    print(Double(zeroes)/Double(n))
}


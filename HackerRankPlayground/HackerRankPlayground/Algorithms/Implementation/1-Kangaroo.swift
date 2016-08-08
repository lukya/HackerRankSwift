//
//  1-Kangaroo.swift
//  HackerRankPlayground
//
//  Created by Swapnil Luktuke on 8/9/16.
//  Copyright © 2016 lukya. All rights reserved.
//

import Foundation

func kangaroo() {
    /// take input x1 v1 x2 v2 into numbers array
    let input = readLine()!.characters.split(" ").map{Int(String($0))!}
    
    /// position variable to initial values
    var x1 = input[0]
    let v1 = input[1]
    var x2 = input[2]
    let v2 = input[3]
    
    var kangaroosMeet = false
    
    /// provided x1 < x2 if v1 <= v2 the kangaroos can never catchup
    /// proceed with calculation only if v1 > v2
    if v1 > v2 {
        /// if x1 excedds x2 the kangaroos never meet since v1 > v2
        /// so, while x1 < x2 execute jumps
        while x1 < x2 {
            /// starting from 'x', with every jump, the kangaroos advance by 'v' places
            x1 = x1 + v1
            x2 = x2 + v2
            /// if kangaroos landed on the same spot print YES and exit
            if x1 == x2 {
                kangaroosMeet = true
            }
        }
    }
    /// none of the above scenarios turned out positive, the kangaroos do not meet
    /// print NO
    
    if kangaroosMeet {
        print("YES")
    }
    else {
        print("NO")
    }
}
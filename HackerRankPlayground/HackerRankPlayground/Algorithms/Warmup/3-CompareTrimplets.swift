//
//  3-CompareTrimplets.swift
//  HackerRankPlayground
//
//  Created by Swapnil Luktuke on 8/4/16.
//  Copyright © 2016 lukya. All rights reserved.
//

import Foundation

func compareTriplets() {
    /// read Alice's points
    var alicePoints = readLine()!.characters.split(" ").map{Int(String($0))!}
    /// rad Bob's points
    var bobPoints = readLine()!.characters.split(" ").map{Int(String($0))!}

    
    /// initialize result to 0 for both
    var aliceResult = 0
    var bobResult = 0
    
    for i in 0 ..< 3 {
        /// if alice scored more, incrase her comparison score
        if alicePoints[i] > bobPoints[i] {
            aliceResult += 1
        }
        /// else, if alice scored more, incrase her comparison score
        else if alicePoints[i] < bobPoints[i] {
            bobResult += 1
        }
    }
    
    /// print the result
    print("\(aliceResult) \(bobResult)")
}



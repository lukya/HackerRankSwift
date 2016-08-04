//
//  4-VeryBigSum.swift
//  HackerRankPlayground
//
//  Created by Swapnil Luktuke on 8/4/16.
//  Copyright © 2016 lukya. All rights reserved.
//

import Foundation

func veryBigSum() {
    
    /// read number of elements
    let n = Int(readLine()!)!
    
    /// read array and map characters to longs
    var arr = readLine()!.characters.split(" ").map{CLong(String($0))!}
    
    /// initialize the sum to 0
    var sum : CLongLong = 0
    
    /// loop through the lobng array
    for i in 0 ..< n {
        sum = sum + arr[i]
    }
    
    print(sum)

}
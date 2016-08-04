//
//  1-SimpleArraySum.swift
//  HackerRankPlayground
//
//  Created by Swapnil Luktuke on 8/4/16.
//  Copyright © 2016 lukya. All rights reserved.
//

import Foundation

func simpleArraySum() {
    
    let n = Int(readLine()!)!
    
    var arr = readLine()!.characters.split(" ").map{Int(String($0))!}
    
    
    var sum = 0
    
    for i in 0 ..< n {
        sum = sum + arr[i]
    }
    
    print(sum)

}
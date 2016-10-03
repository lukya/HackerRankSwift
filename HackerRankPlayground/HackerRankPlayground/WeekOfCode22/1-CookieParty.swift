//
//  1-CookieParty.swift
//  HackerRankPlayground
//
//  Created by Swapnil Luktuke on 8/8/16.
//  Copyright © 2016 lukya. All rights reserved.
//

import Foundation

func cookieParty () {
    /// take cookies and attndants as user input
    let numbers = readLine()!.characters.split(" ").map{Int64(String($0))!}
    var moreCookies = 0
    if numbers[1] > 0 {
        /// calculate the required number of cookies
        let remainder = numbers[1] % numbers[0]
        if remainder > 0 {
            moreCookies = numbers[0] - remainder
        }
    }
    /// print the result
    print(moreCookies)
}
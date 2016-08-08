//
//  8-TimeConversion.swift
//  HackerRankPlayground
//
//  Created by Swapnil Luktuke on 8/5/16.
//  Copyright © 2016 lukya. All rights reserved.
//

import Foundation


func timeConversion () {
    /// read time
    var time : String = readLine ()!
    
    let hourRange = time.startIndex ... time.startIndex.successor()
    
    /// get the hours value
    var hours : Int = Int(time[hourRange])!
    
    if time.uppercaseString.hasSuffix("PM") {
        /// if PM
        if hours < 12 {
            /// add 12 to hour value
            hours = hours + 12
        }
    }
    else if hours > 11 {
        /// else if hour value is 12 set it to 0
        hours = 0
    }

    var hourString = String(hours)
    
    if  hourString.characters.count < 2 {
        hourString = "0" + hourString
    }
    
    /// replace hours with updated hour value
    time.replaceRange(hourRange, with: hourString)

    /// remove AM/PM at the end
    time.removeRange(time.endIndex.predecessor().predecessor() ... time.endIndex.predecessor())
    
    /// print result
    print(time)
}

//
//  Entry.swift
//  Journal
//
//  Created by Thang H Tong on 10/15/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    // Create the properties
    var timeStamps: NSDate
    var title: String
    var bodyText: String
   
    
//    init(timeStamps: NSDate , title: String, bodyText: String) {
//        self.timeStamps = timeStamps
//        self.title = title
//        self.bodyText = bodyText
//    }
//    
    init (title: String, bodyText: String) {
        self.timeStamps = NSDate ()
        self.title = title
        self.bodyText = bodyText
    }
    
    
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return (lhs.bodyText == rhs.bodyText) && (lhs.timeStamps == rhs.timeStamps) && (lhs.title == rhs.title)
}



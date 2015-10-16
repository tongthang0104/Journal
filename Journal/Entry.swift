//
//  Entry.swift
//  Journal
//
//  Created by Thang H Tong on 10/15/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

struct Entry: Equatable {
    // Create the properties
    let timeStamps: String
    let title: String
    let bodyText: String
    
    init (timeStamps: String, title: String, bodyText: String) {
        self.timeStamps = "January 1st , 2016"
        self.title = title
        self.bodyText = bodyText
    }
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return (lhs.bodyText == rhs.bodyText) && (lhs.timeStamps == rhs.timeStamps) && (lhs.title == rhs.title)
}



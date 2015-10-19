//
//  Entry.swift
//  Journal
//
//  Created by Thang H Tong on 10/15/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

class Entry: Equatable {
    
    //MARK: Create the properties
    static let titleKey = "titleKey"
    static let bodyTextKey = "bodyTextKey"
    static let timeStampsKey = "timeStampsKey"

    var timeStamps: NSDate
    var title: String
    var bodyText: String

    init (title: String, bodyText: String) {
        self.timeStamps = NSDate ()
        self.title = title
        self.bodyText = bodyText
    }
    
    //MARK: Create Dictionary

    func dictionaryCopy () -> Dictionary <String, AnyObject> {
    
        let dictionary: Dictionary<String, AnyObject> = [
            Entry.titleKey: title,
            Entry.bodyTextKey: bodyText,
            Entry.timeStampsKey: timeStamps
        ]
        return dictionary
        }
  
    //MARK: Create failable initiliaze

    init?(dictionary: Dictionary<String, AnyObject>) {
    
    guard let
        title = dictionary[Entry.titleKey] as? String ,
        bodyText = dictionary[Entry.bodyTextKey] as? String,
        timeStamps = dictionary[Entry.timeStampsKey] as? NSDate else {
        
            self.title = ""
            self.bodyText = ""
            self.timeStamps = NSDate()
            
            return nil
        }
            self.title = title
            self.bodyText = bodyText
            self.timeStamps = timeStamps
        }
}

    //MARK: Equatable function

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return (lhs.bodyText == rhs.bodyText) && (lhs.timeStamps == rhs.timeStamps) && (lhs.title == rhs.title)
}



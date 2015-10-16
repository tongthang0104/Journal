//
//  EntryController.swift
//  Journal
//
//  Created by Thang H Tong on 10/15/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

// Define class EntryCotroller
class EntryController {
    static let shareInstantEntry: EntryController = EntryController()
   
// Create Entry Array
    var entryArray = [Entry]()
    
    init () {
        self.entryArray = [Entry] ()
    }
 

// Function let you add thing to your array

    func addEntry (entryParameter: Entry) -> () {
       self.entryArray.append(entryParameter)
    
}

// func let you remove things from your array

    func removeEntry (entryParameter2: Entry) -> () {
    
        let index = self.entryArray.indexOf(entryParameter2)
        
        if let entryIndex = index
        {
            self.entryArray.removeAtIndex(entryIndex)
        }
    }
}



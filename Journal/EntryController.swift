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
    static let sharedController: EntryController = EntryController()
  
// Create Entry Array
    var entryArray: [Entry] = []
    
    init () {
        self.entryArray = [
            Entry (title: "Today", bodyText: "Happy New Year"),
            Entry (title: "Celebrate", bodyText: "Drinking, Gambling")
        ]
    }
 

// Function let you add thing to your array

    func addEntry (entry: Entry) -> () {
       self.entryArray.append(entry)
    
}

// func let you remove things from your array
// This function require the equatable function from the Entry.swift in order to find the exact item on specific row
    
// TODO: Ask mentor why is that?

    func removeEntry (entryParameter2: Entry) -> () {
        
        let index = self.entryArray.indexOf(entryParameter2)
        
        if let entryIndex = index
        {
            self.entryArray.removeAtIndex(entryIndex)
        }
    }
}






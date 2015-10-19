//
//  EntryController.swift
//  Journal
//
//  Created by Thang H Tong on 10/15/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

class EntryController {
    static let sharedController: EntryController = EntryController()
  
//MARK: Entry Array
    
    var entryArray: [Entry] = []
    
    init () {
        self.entryArray = []
        loadFromPersistentStore ()
    }
    
//MARK: ADD

    func addEntry (entry: Entry) -> () {
       self.entryArray.append(entry)
        saveToPersistentStore ()
    }

//MARK: REMOVE
    
    func removeEntry (entryParameter2: Entry) -> () {
        
        let index = self.entryArray.indexOf(entryParameter2)
        
        if let entryIndex = index{
            self.entryArray.removeAtIndex(entryIndex)
        }
        saveToPersistentStore ()
    }


    //MARK: Save to Persistent Store

    func saveToPersistentStore () {
        
        let entryDictionary = self.entryArray.map({$0.dictionaryCopy()})
        NSUserDefaults.standardUserDefaults().setValue(entryDictionary, forKey: "Entry")
    
    }

    //MARK: Load from Persistent Store

    func loadFromPersistentStore () {
    
        //grab entry item in default
        let entryFromArray = NSUserDefaults.standardUserDefaults().objectForKey("Entry") as? [Dictionary<String, AnyObject>]
        
        if let entryDictionary = entryFromArray {
            self.entryArray = entryDictionary.map({Entry(dictionary: $0)!})
        }
    
    }

}














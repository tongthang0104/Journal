//
//  EntryController.swift
//  Journal
//
//  Created by Thang H Tong on 10/15/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

class EntryController {
    static let shareInstantEntry: EntryController = EntryController()
    var entryArray = [Entry]()
    
    init () {
        self.entryArray = [Entry] ()
    }
 
}



//
//  EntryController.swift
//  Journal
//
//  Created by Caleb Hicks on 10/1/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation
import CoreData

class EntryController {
    
    static let sharedController = EntryController()
    
    var entries: [Entry] {
        
        //TODO: Computed Properties ???
        
        let request = NSFetchRequest(entityName: Entry.entityName)
        let moc = Stack.sharedStack.managedObjectContext
        
        do {
            return try moc.executeFetchRequest(request) as! [Entry]
        } catch {
            return []
        }
    }
    
    func addEntry(entry: Entry) {
        
        self.saveToPersistentStorage()
    }
    
    func removeEntry(entry: Entry) {
        
        if let moc = entry.managedObjectContext {
            moc.deleteObject(entry)
            self.saveToPersistentStorage()
        }
    }
    
    func saveToPersistentStorage() {
        
        let moc = Stack.sharedStack.managedObjectContext
        do {
            try moc.save()
        } catch {
            print("Error saving managed object context. Items not saved. \(error)")
        }
        
    }
    
}
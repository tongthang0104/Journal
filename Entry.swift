//
//  Entry.swift
//  Journal
//
//  Created by Thang H Tong on 10/26/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation
import CoreData


class Entry: NSManagedObject {

    static let entityName = "Entry"
    convenience init(title: String, text: String, timestamp: NSDate = NSDate(), context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
        let entity = NSEntityDescription.entityForName(Entry.entityName, inManagedObjectContext: context)
        
        self.init(entity: entity!, insertIntoManagedObjectContext: context)
        
        self.title = title
        self.text = text
        self.timestamp = timestamp
    }

}

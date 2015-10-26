//
//  Entry+CoreDataProperties.swift
//  Journal
//
//  Created by Thang H Tong on 10/26/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Entry {

    @NSManaged var timestamp: NSDate?
    @NSManaged var title: String?
    @NSManaged var text: String?

}

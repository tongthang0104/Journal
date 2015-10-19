//
//  EntryListTableViewController.swift
//  Journal
//
//  Created by Thang H Tong on 10/17/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class EntryListTableViewController: UITableViewController {
    
    var entries = EntryController.sharedController.entryArray
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
       
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

 

    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
        return entries.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("entryCell", forIndexPath: indexPath)
        
        // Create variable entry
        let entry = entries[indexPath.row]
       
        // change what we want cell to appear:
        
        cell.textLabel?.text = entry.title
        cell.detailTextLabel?.text = ( "\(entry.timeStamps)")
    
        return cell
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
       
            entries.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "editEntry" {
            
            if let displayEntry = segue.destinationViewController as? EntryDetailViewController {
            
                _ = displayEntry.view
                
                let indexPath = tableView.indexPathForSelectedRow
                
                if let selectedRows = indexPath?.row {
                
                let entry = entries[selectedRows]
                
                displayEntry.updateWithEntry(entry)
                }
              
            }
       
        }
    }
   
}












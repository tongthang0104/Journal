//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Caleb Hicks on 9/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController {
  
    // MARK: Properties
   
    var entry = Entry?()
    var entries = EntryController.sharedController
  
    @IBOutlet weak var entryTitle: UITextField!
    
    @IBOutlet weak var entryBodyText: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: Update new Entry
    
    func updateWithEntry (entry: Entry) {
        
        self.entry = entry
        self.entryTitle.text = entry.title
        self.entryBodyText.text = entry.bodyText
        
    }
    
    

    //MARK: Action

    @IBAction func clearButtonTapped(sender: UIButton) {
        
        entryTitle.text? = ""
        entryBodyText.text? = ""
  
    }
    
    @IBAction func saveButtonTapped(sender: UIBarButtonItem) {
        
        // if select the existing Entry to edit, replace that with new information
        if let existingEntry = entry {
            
            if let entry = entryTitle.text, entryBodyText = entryBodyText.text {
                existingEntry.title = entry
                existingEntry.bodyText = entryBodyText
            }
            
        // if create new entry, add it to a new rows. Call function addEntry
            
        } else {
        
            let newEntry = Entry (title: entryTitle.text!, bodyText: entryBodyText.text)
    
            entries.addEntry(newEntry)
            
        }
        
    }
    
    @IBAction func cancelButtonTapped(sender: UIBarButtonItem) {
        
        let cancelButtonPresent = presentingViewController is UINavigationController
        
        if cancelButtonPresent {
            dismissViewControllerAnimated(true, completion: nil)
        } else {
            navigationController!.popViewControllerAnimated(true)
        }
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension EntryDetailViewController: UITextFieldDelegate {
    
      func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}



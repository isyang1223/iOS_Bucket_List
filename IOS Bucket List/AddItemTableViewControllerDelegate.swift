//
//  AddItemTableViewControllerDelegate.swift
//  IOS Bucket List
//
//  Created by Ian Yang on 3/12/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import Foundation

protocol AddItemTableViewControllerDelegate: class {
    func itemSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller: AddItemTableViewController)
    
}

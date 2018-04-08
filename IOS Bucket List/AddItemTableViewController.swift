//
//  AddItemTableControllerTableViewController.swift
//  IOS Bucket List
//
//  Created by Ian Yang on 3/12/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {

    weak var delegate: AddItemTableViewControllerDelegate?
    
    var item: String?
    var indexPath: NSIndexPath?
    
    
    @IBOutlet weak var itemTextField: UITextField!
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        let text = itemTextField.text!
        delegate?.itemSaved(by: self, with: text, at: indexPath)
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTextField.text = item

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

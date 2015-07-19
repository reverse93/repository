//
//  FirstViewController.swift
//  wieleWyborow
//
//  Created by Appcamp on 19/07/15.
//  Copyright (c) 2015 Appcamp. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var Table: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool){
        super.viewWillAppear(animated)
        
        Table.reloadData()
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    
        return itemMgr.items.count
    
        
    }

        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
    
    
        let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle,reuseIdentifier: "CellId")
        
        cell.textLabel!.text = itemMgr.items[indexPath.row].name
        
        cell.detailTextLabel!.text = itemMgr.items[indexPath.row].details
        
        
        return cell
    
    }
}


//
//  BirthdayTVC.swift
//  Happy_Birthday_To_Ha_My
//
//  Created by macbook on 9/26/18.
//  Copyright © 2018 Viet. All rights reserved.
//

import UIKit

class BirthdayTVC: UITableViewController {
    
    var birthdayData = ["1. Happy" : "HM1square.jpg", "2. Birthday" : "HM2square.jpg", "3. To Ha My" : "HM3square.jpg", ]

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return birthdayData.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        let size = birthdayData.count
        let index = size - indexPath.row - 1
        var arrayKey = Array(birthdayData.keys)
        
        cell.textLabel?.text = arrayKey[index]
        cell.imageView?.image = UIImage(named: birthdayData["\(arrayKey[index])"]!)

        return cell
    }

}

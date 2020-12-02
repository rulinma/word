//
//  ProfileViewController.swift
//  word
//
//  Created by Rollin on 2020/12/2.
//  Copyright © 2020年 rulinma. All rights reserved.
//

import Foundation
import UIKit

class ProfileiewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("profile view startup")
        // Do any additional setup after loading the view.
        self.title = "我"
        self.view.backgroundColor = UIColor.blue
        
        // tableViewController setting & NavigationController
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0) {
            return 2;
        }
        
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        NSLog("section: " + String(indexPath.section) + " row: " + String(indexPath.row))
        let cell = UITableViewCell()
        
        cell.textLabel?.text = "test and section: " + String(indexPath.section) + " row: " + String(indexPath.row)
        
        return cell
    }
    
}

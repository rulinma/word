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
        self.title = "我的"
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
        
        // > arrow
        if(indexPath.section == 1 && indexPath.row == 1 ) {
            cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
            cell.backgroundColor = UIColor(hexString: "#FF00FF")
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.section == 0  && indexPath.row == 0) {
            NSLog("table height \(indexPath.row)")
            return CGFloat(120)
        }
        
        return CGFloat(40)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("section: "  + String(indexPath.section) + " row: " + String(indexPath.row))
        // viewController show
        
        let aboutViewController = AboutViewController();
        
        self.navigationController?.pushViewController(aboutViewController, animated: true)
    }
    
}

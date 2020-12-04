//
//  About.swift
//  word
//
//  Created by Rollin on 2020/12/2.
//  Copyright © 2020年 rulinma. All rights reserved.
//

import Foundation
import UIKit

class AboutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title = "关于"
        self.view.backgroundColor = UIColor.gray
        
        // add version info
        let r:CGRect = UIScreen.main.bounds
        let width = r.size.width
        NSLog("width:\(width)")
        
        let height = self.navigationController?.navigationBar.frame.size.height
        NSLog("height:\(height)")
        let view2 = UIView(frame: CGRect(x:0, y:height! + 50, width:width,height: 500))
        
        view2.backgroundColor = UIColor(hexString: "#E1E1E1")
        self.view.addSubview(view2)
        
        // should be bottom get screen width and height
        // constraints set
        // should be 450
        let cp = UILabel(frame: CGRect(x:0, y:height! + 530, width: UIScreen.main.bounds.size.width, height: 30))
        cp.textAlignment = NSTextAlignment.center
        cp.text = "AI记单词 " +   "版本: " + AppInfo.getSoftwareVersion()
        cp.textAlignment = NSTextAlignment.center
        self.view.addSubview(cp)
        
        self.view.backgroundColor =  UIColor(hexString: "#E1E1E1")
        
        NSLog("about view end")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

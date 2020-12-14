//
//  HomeViewController.swift
//  word
//
//  Created by Rollin on 2020/12/2.
//  Copyright © 2020年 rulinma. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    //    var  imageView: UIImageView
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title = "首页"
        self.view.backgroundColor = UIColor.red
        
        // add subview to show image
        let imageName = "Splash.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        
        let imgClick = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped));
        imageView.addGestureRecognizer(imgClick);
        imageView.isUserInteractionEnabled = true

        view.addSubview(imageView)
        
        // imageView 添加点击事件

        // 显示另外的subview
    }
    
    // 点击事件方法
    @objc func imageTapped(sender: UITapGestureRecognizer) -> Void {
        NSLog("imageTapped")
        if sender.state == .ended {
            print("UIImageView tapped")
        }
        
        let im = sender.view as? UIImageView
        im?.isHidden = true;
        // show word exp view
        
        // add new view
        // subview
        // click show imageView
   
        // view.backgroundColor = UIColor.yellowColor()
        let uiLable = UILabel(frame: CGRect(x: 100, y:100, width: 200, height: 200))
        uiLable.textAlignment = NSTextAlignment.center;
        uiLable.text = "word"
        uiLable.backgroundColor = UIColor.blue
        
        
        let labelClick = UITapGestureRecognizer(target: self, action: #selector(self.labelTapped));
        
        uiLable.addGestureRecognizer(labelClick);
        uiLable.isUserInteractionEnabled = true
        view.addSubview(uiLable)
        
    }
    
    
    // 点击事件方法
    @objc func labelTapped(sender: UITapGestureRecognizer) -> Void {
        NSLog("labelTapped")
        
        let im = sender.view as? UILabel
        im?.isHidden = true;
    
        let imageName = "Splash.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        
        let imgClick = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped));
        imageView.addGestureRecognizer(imgClick);
        imageView.isUserInteractionEnabled = true
        
        view.addSubview(imageView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

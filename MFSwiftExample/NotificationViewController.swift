//
//  NotificationViewController.swift
//  MFSwiftExample
//
//  Created by XuMengFan on 2017/7/18.
//  Copyright © 2017年 MF. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGray;
        self.title = "通知"
        
        NotificationCenter.default.addObserver(self, selector: #selector(back), name: NSNotification.Name(rawValue: "back"), object: nil);

        let button = UIButton(type: UIButtonType.custom);
        button.backgroundColor = UIColor.red;
        button.setTitle("发送通知", for: UIControlState.normal);
        button.frame = CGRect.init(x: 20, y: 150, width: 250, height: 50);
        button.addTarget(self, action: #selector(notification), for: UIControlEvents.touchUpInside);
        self.view.addSubview(button);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func back() -> Void {
        self.navigationController?.popViewController(animated: true);
    }
    
    func notification() -> Void {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "back"), object: nil);
    }
    
}

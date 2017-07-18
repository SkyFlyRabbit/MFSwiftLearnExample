//
//  AlertViewController.swift
//  MFSwiftExample
//
//  Created by XuMengFan on 2017/7/17.
//  Copyright © 2017年 MF. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil);
        self.view.backgroundColor = UIColor.lightGray;
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
    }

    override func viewDidLoad() {
        super.viewDidLoad();
        self.title = "弹窗";
        
        let button = UIButton.init(type: UIButtonType.custom);
        button.backgroundColor = UIColor.blue;
        button.frame = CGRect.init(x: 20, y: 150, width: 300, height: 50);
        button.setTitle("弹窗", for: UIControlState.normal);
        button.addTarget(self, action: #selector(doClick), for: UIControlEvents.touchUpInside);
        self.view.addSubview(button);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    public func doClick() {
        print("弹窗");
        let alert = UIAlertController.init(title: "提示", message: "是否感觉很惊讶?", preferredStyle: UIAlertControllerStyle.alert);
        alert.addAction(UIAlertAction.init(title: "确定", style: UIAlertActionStyle.default, handler: { (self) in
            //
        }));
        self.navigationController?.present(alert, animated: true, completion: { 
            //
        });
    }
}

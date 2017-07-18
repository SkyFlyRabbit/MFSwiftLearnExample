//
//  GestureViewController.swift
//  MFSwiftExample
//
//  Created by XuMengFan on 2017/7/18.
//  Copyright © 2017年 MF. All rights reserved.
//

import UIKit

class GestureViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.lightGray;
        self.title = "手势";
        
        let gesture = UITapGestureRecognizer.init(target: self, action: #selector(comeback));
        self.view.addGestureRecognizer(gesture);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @objc private func comeback() {
        self.navigationController?.popViewController(animated: true);
    }

}



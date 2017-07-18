//
//  ViewController.swift
//  MFSwiftExample
//
//  Created by XuMengFan on 2017/7/17.
//  Copyright © 2017年 MF. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView = UITableView();
    var titleArray = NSArray();
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil);
        self.titleArray = NSArray.init();
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        self.title = "列表入口";
        
        let rect = CGRect.init(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height - 64);
        self.tableView = UITableView(frame: rect, style: UITableViewStyle.plain);
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.tableView.tableFooterView = UIView.init();
        self.view.addSubview(self.tableView);
        
        self.titleArray = NSArray.init(objects: "弹窗", "手势", "通知");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillAppear(animated);
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.titleArray.count;
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell");
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell");
        }
        if indexPath.row < self.titleArray.count {
            cell?.textLabel?.text = self.titleArray[indexPath.row] as? String;
        }
        return cell!;
    }

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        var vc : UIViewController? = nil;
        switch indexPath.row {
        case 0:
            vc = AlertViewController.init(nibName: nil, bundle: nil);
        case 1:
            vc = GestureViewController.init(nibName: nil, bundle: nil);
        case 2:
            vc = NotificationViewController.init(nibName: nil, bundle: nil);
        default: break
        }

        if (vc != nil) {
            self.navigationController?.pushViewController(vc!, animated: true);
        }
        
        tableView.deselectRow(at: indexPath, animated: true);
    }
}


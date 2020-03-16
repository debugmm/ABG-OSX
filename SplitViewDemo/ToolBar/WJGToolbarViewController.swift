//
//  WJGToolbarViewController.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/16.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa

class WJGToolbarViewController: NSTabViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.viewsInit()
    }
    
    //MARK: -
    func viewsInit(){
        self.tabStyle = .unspecified
        self.tabView.tabPosition = .none
        self.tabView.tabViewBorderType = .none
        
        let pageA=PageAToolbarViewController.init()
        
        let item=NSTabViewItem.init(viewController: pageA)
        
        self.addTabViewItem(item)
    }
}

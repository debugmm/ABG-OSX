//
//  EntranceTabViewController.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/16.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa

class EntranceTabViewController: NSTabViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.view.wantsLayer=true
        self.view.layer?.backgroundColor=NSColor.orange.cgColor
        
        self.viewsInit()
    }
    
    //MARK: -
    func viewsInit(){
        self.tabStyle = .unspecified
        self.tabView.tabPosition = .none
        self.tabView.tabViewBorderType = .none
        
        //文件库
        let rootdir=RootDirListSplitViewController.init()
        let ritem=NSTabViewItem.init(viewController: rootdir)
        
        //其他
        let other=RootDirListSplitViewController.init()
        let oitem=NSTabViewItem.init(viewController: other)
        
        self.addTabViewItem(ritem)
        self.addTabViewItem(oitem)
    }
}

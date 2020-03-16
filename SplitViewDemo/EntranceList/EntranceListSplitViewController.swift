//
//  EntranceListSplitViewController.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/16.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa

class EntranceListSplitViewController: NSSplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.view.wantsLayer=true
        self.view.layer?.backgroundColor=NSColor.blue.cgColor
        
        self.viewsInit()
    }
    
    //MARK: -
    func viewsInit(){
        self.splitView.isVertical = false
        
        let entable=EntranceTableViewController.init()
        let setting=SettingViewController.init()
        
        let eitem=NSSplitViewItem.init(viewController: entable)
        eitem.minimumThickness=50.0
        
        let sitem=NSSplitViewItem.init(viewController: setting)
        sitem.minimumThickness=40.0
        sitem.maximumThickness=40.0
        
        self.addSplitViewItem(eitem)
        self.addSplitViewItem(sitem)
    }
}

//
//  RootDirListSplitViewController.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/16.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa

class RootDirListSplitViewController: WJGBaseSplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.viewsInit()
    }
    //MARK: -
    func viewsInit(){
        self.splitView.isVertical = true
        
        let root=RootDirListViewController.init()
        let sub=SubFileListViewController.init()
        let attr=FileAttributeViewController.init()
        
        let ritem=NSSplitViewItem.init(viewController: root)
        ritem.minimumThickness=50
        ritem.maximumThickness=50
        
        let sitem=NSSplitViewItem.init(viewController: sub)
        sitem.minimumThickness=50
//        sitem.maximumThickness=50
        
        let aitem=NSSplitViewItem.init(viewController: attr)
        aitem.minimumThickness=100
        aitem.maximumThickness=100
        
        self.addSplitViewItem(ritem)
        self.addSplitViewItem(sitem)
        self.addSplitViewItem(aitem)
    }
}

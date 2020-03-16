//
//  HorizontalSplitViewController.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/16.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa

class HorizontalSplitViewController: WJGBaseSplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.viewsInit()
    }
    
    //MARK: -
    func viewsInit(){
        self.splitView.isVertical = true
        
        let list=EntranceListSplitViewController.init()
        let entab=EntranceTabViewController.init()
        
        let litem=NSSplitViewItem.init(viewController: list)
        litem.minimumThickness=50.0
        litem.maximumThickness=50.0
        
        let eitem=NSSplitViewItem.init(viewController: entab)
        eitem.minimumThickness=100.0
        
        self.addSplitViewItem(litem)
        self.addSplitViewItem(eitem)
    }
}

//
//  WJGSplitViewController.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/16.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa

class WJGSplitViewController: NSSplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.view.wantsLayer=true
        self.view.layer?.backgroundColor=NSColor.yellow.cgColor
        
        self.viewsInit()
    }
    
    //MARK: -
    func viewsInit(){
        self.splitView.isVertical=false
        
        let av=AViewController.init()
        av.view.wantsLayer=true
        av.view.layer?.backgroundColor=NSColor.green.cgColor
        
        let bv=AViewController.init()
        bv.view.wantsLayer=true
        bv.view.layer?.backgroundColor=NSColor.red.cgColor
        
        let aitem=NSSplitViewItem.init(viewController: av)
        aitem.maximumThickness=45.0
        aitem.minimumThickness=45.0
        
        let bitem=NSSplitViewItem.init(viewController: bv)
        
        self.addSplitViewItem(aitem)
        self.addSplitViewItem(bitem)
    }
}

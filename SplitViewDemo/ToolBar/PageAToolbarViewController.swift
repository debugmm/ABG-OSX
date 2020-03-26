//
//  PageAToolbarViewController.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/16.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa

class PageAToolbarViewController: ContentViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.view.wantsLayer=true
        self.view.layer?.backgroundColor=NSColor.yellow.cgColor
    }
    
}

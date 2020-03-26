//
//  ViewController.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/16.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa
import SnapKit

class ViewController: NSViewController {
        
    override func loadView() {
        self.view=NSView.init()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.frame=NSRect.init(x: 0, y: 0, width: 300, height: 300)
        self.viewsInit()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    //MARK: -
    func viewsInit(){
        
        let splitV=VerticalSplitViewController.init()
        self.addChild(splitV)
        self.view.addSubview(splitV.view)
        
        splitV.view.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
}


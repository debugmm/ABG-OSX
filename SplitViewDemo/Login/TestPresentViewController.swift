//
//  TestPresentViewController.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/26.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa
import SnapKit

class TestPresentViewController: ContentViewController {
    
    override func loadView() {
        self.view=BaseEventBlockView.init()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.view.wantsLayer=true
        self.view.layer?.backgroundColor=NSColor.green.cgColor
        
        self.viewsInit()
    }
    
    //MARK: - views init
    func viewsInit(){
        let btn=NSButton.init(title: "Go Back", target: self, action: #selector(goback(sender:)))
        btn.setButtonType(.momentaryChange)
        
        self.view.addSubview(btn)
        
        btn.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
    
    //MARK: - button actions
    @objc func goback(sender:NSButton){
        self.dismiss(nil)
    }
}

//
//  LoginViewController.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/26.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa
import SnapKit

class LoginViewController: ContentViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.view.frame=LoginWindowContentRect.defaultFrame.frame
        self.viewsInit()
    }
    
    //MARK: - views init
    func viewsInit(){
        let btn=NSButton.init(title: "Go to Main", target: self, action: #selector(gotoMain(sender:)))
        btn.setButtonType(.momentaryChange)
        
        self.view.addSubview(btn)
        
        btn.snp.makeConstraints { (make) in
            make.width.equalTo(50)
            make.height.equalTo(30)
            make.center.equalToSuperview()
        }
    }
    
    //MARK: - button actions
    @objc func gotoMain(sender:NSButton){
        
    }
}

struct LoginWindowContentRect {
    var size:NSSize
    var point:NSPoint
    
    var frame:NSRect{
        return NSRect.init(origin: self.point, size: self.size)
    }
    
    init(point:NSPoint,size:NSSize) {
        self.point=point
        self.size=size
    }
    
    init(){
        self.size=NSSize.init(width: 336, height: 468)
        self.point=NSPoint.init(x: 0, y: 0)
    }
    
    static let defaultFrame=LoginWindowContentRect.init()
}

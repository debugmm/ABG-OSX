//
//  WJGWindowController.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/16.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    //配置登录窗口属性
    convenience init(){
        let window = NSWindow.init(contentViewController: ViewController.init())
        window.titleVisibility = .visible
        window.titlebarAppearsTransparent=false
        window.backingType = .buffered
        window.title="SplitViewController测试"
//        window.styleMask = NSWindow.StyleMask.init(rawValue:NSWindow.StyleMask.closable.rawValue | NSWindow.StyleMask.titled.rawValue)
        
//        window.standardWindowButton(.miniaturizeButton)?.isHidden=true
//        window.standardWindowButton(.zoomButton)?.isHidden=true
        window.isMovableByWindowBackground=true
        
        self.init(window: window)
        
        self.window?.delegate=self
        self.window?.isReleasedWhenClosed=true
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
}

extension MainWindowController:NSWindowDelegate{}

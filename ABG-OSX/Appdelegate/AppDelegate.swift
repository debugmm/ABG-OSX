//
//  AppDelegate.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/16.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa

//@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    //登录切换
    var switchLoginMain:SwitchLoginMain=SwitchLoginMain.init()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        //居中显示
        self.switchLoginMain.login()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return self.switchLoginMain.applicationShouldTerminateAfterLastWindowClosed(sender)
    }
    
    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        
        if(!flag){
           self.switchLoginMain.orderFrontMainWindow()
        }
        
        return true
    }
}


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

    var windowController:WJGWindowController=WJGWindowController.init()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        self.windowController.window?.center()
        self.windowController.showWindow(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}


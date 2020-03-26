//
//  SwitchLoginMain.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/26.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Foundation
import AppKit

class SwitchLoginMain{
    
    private var loginWindowController : LoginWindowController?
    private var mainWindowController : MainWindowController?
    //标记是否应该terminate，当关闭最后一个窗口时
    private var shouldTerminate:Bool?
    
    init() {
        NotificationCenter.default.addObserver(self, selector: #selector(switchToMain(noti:)), name: NSNotification.SwitchToMainNotificationName, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(switchToLogin(noti:)), name: NSNotification.SwitchToLoginNotificationName, object: nil)
    }
    
    //MARK: - login-main
    func login(){
        if self.loginWindowController == nil {
            self.loginWindowController = LoginWindowController.init()
        }
        //在登录窗口时，应该
        self.shouldTerminate=true
        
        self.loginWindowController?.window?.center()
        self.loginWindowController?.showWindow(nil)
        self.loginWindowController?.window?.orderFront(nil)
        
        self.mainWindowController?.window?.orderOut(nil)
        self.mainWindowController?.close()
    }
    
    @objc func switchToMain(noti:NSNotification){
        if self.mainWindowController == nil {
            self.mainWindowController=MainWindowController.init()
        }
        //在主界面时，不应该
        self.shouldTerminate=false
        
        self.mainWindowController?.window?.center()
        self.mainWindowController?.showWindow(nil)
        self.mainWindowController?.window?.orderFront(nil)
        
        self.loginWindowController?.window?.orderOut(nil)
        self.loginWindowController?.close()
    }
    
    @objc func switchToLogin(noti:NSNotification){
        self.login()
    }
    
    //MARK: -
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return self.shouldTerminate ?? true
    }
}

extension NSNotification {
    static var SwitchToMainNotificationName:NSNotification.Name{
        return NSNotification.Name(rawValue: "switch.to.main.notification")
    }
    static var SwitchToLoginNotificationName:NSNotification.Name{
        return NSNotification.Name(rawValue: "switch.to.login.notification")
    }
}

//
//  BlockEventView.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/26.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa

class BaseEventBlockView: NSView {
    
    override func mouseDown(with event: NSEvent) {
        print(event)
    }
}

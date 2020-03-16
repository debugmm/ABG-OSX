//
//  Main.swift
//  SecurityPlanet
//
//  Created by wujungao on 2020/2/25.
//  Copyright © 2020 安全星球. All rights reserved.
//

import AppKit

let delegate = AppDelegate() //alloc main app's delegate class
NSApplication.shared.delegate = delegate //set as app's delegate
NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)

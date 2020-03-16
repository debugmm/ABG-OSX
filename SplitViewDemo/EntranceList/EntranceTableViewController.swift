//
//  EntranceTableViewController.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/16.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa

class EntranceTableViewController: WJGContentViewController {
    
    var scrollView:NSScrollView=NSScrollView.init()
    var tableView:NSTableView=NSTableView.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        self.view.wantsLayer=true
        self.view.layer?.backgroundColor=NSColor.green.cgColor
        
        self.viewsInit()
    }
    
    //MARK: -
    func viewsInit(){
        self.scrollView.hasVerticalScroller=false
        self.scrollView.hasHorizontalScroller=false
        self.scrollView.documentView=self.tableView
        
        self.view.addSubview(self.scrollView)
        self.scrollView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
        self.tableView.rowSizeStyle = .custom
        self.tableView.focusRingType = .none
        let column=NSTableColumn.init(identifier: NSUserInterfaceItemIdentifier.init("column"))
        column.title="column"
        column.isEditable=false
        
        self.tableView.addTableColumn(column)
    }
}

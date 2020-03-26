//
//  BaseViewControllerPresentationAnimator.swift
//  SplitViewDemo
//
//  Created by wujungao on 2020/3/26.
//  Copyright © 2020 com.wujungao. All rights reserved.
//

import Cocoa

class BaseViewControllerPresentationAnimator: NSObject {
}

extension BaseViewControllerPresentationAnimator:NSViewControllerPresentationAnimator{
    func animatePresentation(of viewController: NSViewController, from fromViewController: NSViewController) {
                
        let containerView=fromViewController.view
        let finalFrame=containerView.frame

        let childView=viewController.view
        childView.frame=finalFrame

        containerView.addSubview(childView)
        
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration=0.5
            childView.animator().frame=finalFrame
        }, completionHandler: nil)
    }
    
    func animateDismissal(of viewController: NSViewController, from fromViewController: NSViewController) {
        NSAnimationContext.runAnimationGroup({ (context) in
            context.duration=0.5
        }) {
            viewController.view.removeFromSuperview()
        }
    }
}
